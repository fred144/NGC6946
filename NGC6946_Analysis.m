%Read in the master frames
ngc6946_ha_master = rfits('ngc6946_master_ha.fit');
HA_data = rot90(ngc6946_ha_master.data); HA_data = HA_data(1 : 1440, 50 :end);
ngc6946_jcb_master = rfits('ngc6946_master_jcb.fit');
JCB_data = rot90(ngc6946_jcb_master.data); JCB_data = JCB_data(1 : 1440, 50 :end);

%Find the center by roughly constraining near the 
%center and finding the max value
trimmed_HA_data = HA_data(730 :790, 1050 :1190);
[max_num_HA, max_idx_HA]=max(trimmed_HA_data(:));
[HA_x,HA_y] = ind2sub(size(trimmed_HA_data),max_idx_HA);

trimmed_JCB_data = JCB_data(730 :790, 1050 :1190);
[max_num_JCB, max_idx_JCB]=max(trimmed_JCB_data(:));
[JCB_x,JCB_y] = ind2sub(size(trimmed_JCB_data),max_idx_JCB);
% find the optimum target aperture while keeping the sky annulus dimensions
% constantfills a vector of fluxes and another vector with their corresponding 
% errors you can then plot the flux as a function of paerture radius

ccdgain = 1.2999999523162842;

HA_flxs = [];
HA_errs = [];
for radHA = 0:1:400
    colormap hot
    colorbar;
    figure(1);
    [flx, err]  = aperE(HA_data, HA_y + 1050, HA_x + 730, radHA, radHA, 500, 500, 600,600, (1/ccdgain) ); 
    HA_flxs = [HA_flxs, flx];  
    HA_errs = [HA_errs, err];    
end
JCB_flxs = [];
JCB_errs = [];
hold off 
for radJCB = 0:1:400
    colormap bone;
    colorbar;
    figure(2);
    [flx, err]  = aperE(JCB_data, JCB_y + 1050, JCB_x + 730, radJCB, radJCB, 500, 500, 600, 600, (1/ccdgain) ); 
    JCB_flxs = [JCB_flxs, flx];  
    JCB_errs = [JCB_errs, err];    
end
%% Purposes of Graphing Images with controlled scaling
% Ha
figure (3) 
imagesc(HA_data, [1500, 2300]); colorbar(); colormap hot;
p=(0:360)*pi/180;
xc=(cos(p));
yc=sin(p);
hold on
plot((HA_y + 1050)+200*xc,(HA_x + 730)+200*yc,'green');
plot((HA_y + 1050)+500*xc,(HA_x + 730)+500*yc,'w');
plot((HA_y + 1050)+600*xc,(HA_x + 730)+600*yc,'w');

% JCB
figure (4) 
imagesc(JCB_data, [22200, 24000]); colorbar(); colormap bone;
p=(0:360)*pi/180;
xc=(cos(p));
yc=sin(p);
hold on
plot((JCB_y + 1050)+200*xc,(JCB_x + 730)+200*yc,'green');
plot((JCB_y + 1050)+500*xc,(JCB_x + 730)+500*yc,'w');
plot((JCB_y + 1050)+600*xc,(JCB_x + 730)+600*yc,'w');
%% Plotting the optimum aperture size

HA_SNR = HA_flxs ./ HA_errs;
JCB_SNR = JCB_flxs ./ JCB_errs;

rads = linspace(0,radJCB,radJCB + 1);

%hold off
figure (5) 
HA = plot( rads ,HA_flxs, 'Color', [1 0 0], 'LineWidth', 1.25);
hold on
JCB = plot (rads , JCB_flxs , 'Color', [0 0 1], 'LineWidth', 1.25);
%hold on
optimumHA = HA_flxs(200)
optimumHAerr = HA_errs(200)
optimumJCB = JCB_flxs(200)
optimumJCBerr = JCB_errs(200)

optimum = xline(200,'--k', {'Optimum', 'Radius'},'Interpreter','latex');
xlabel('Target Aperture Radius (pixels) ','Interpreter','latex'); 
ylabel('Log Flux (e-)','Interpreter','latex');
title('Figure 1. Flux as a Function of Aperture Radius','Interpreter','latex');
set(gca, 'YScale', 'log')
legend([HA JCB] , 'H$\alpha$', 'JC-B', 'Interpreter','latex');
xlim([1 radJCB])
ylim([0 max(JCB_flxs)*5.5])
%% Nonsytematicall determining the size

ngc_6946_master_ha = rfits('ngc6946_master_ha.fit');
ngc_6946_master_jcb = rfits('ngc6946_master_jcb.fit');
master_ha = ngc_6946_master_ha.data;
master_jcb = ngc_6946_master_jcb.data;
 
figure(1)
colormap(gray(256));
imagesc(rot90(master_jcb), [22000, 24000]); colorbar();
 
% figure(2)
% colormap(gray(256));
% imagesc(master_ha, [1000, 2000]); colorbar();
 
jcb_background_values = cat(1, reshape(master_jcb(610:750, 635:750), [], 1), reshape(master_jcb(1510:1740,1050:1130),[],1));
background_jcb = median(jcb_background_values, 'all');
sigma_background_jcb = std(jcb_background_values,[], 'all');
significant_jcb = background_jcb + .5*sigma_background_jcb;
[galaxy_x_jcb, galaxy_y_jcb] = find(master_jcb(370:1700, 400:1000) <= 24720 & master_jcb(370:1700, 400:1000) >= significant_jcb);
x_up_bound = max(galaxy_x_jcb);
x_low_bound = min(galaxy_x_jcb);
y_up_bound = max(galaxy_y_jcb);
y_low_bound = min(galaxy_y_jcb);
 
 
background_ha = median(master_ha(610:750, 635:750), 'all');
sigma_background_ha = std(master_ha(610:750, 635:750),[], 'all');
significant_ha = background_ha + sigma_background_ha;
[galaxy_x_ha, galaxy_y_ha] = find(master_jcb(730:1500,420:1000) <= 2283 & master_jcb(730:1500,420:1000) >= significant_ha);
x_up_bound = max(galaxy_x_ha);
x_low_bound = min(galaxy_x_ha);
y_up_bound = max(galaxy_y_ha);
y_low_bound = min(galaxy_y_ha);










