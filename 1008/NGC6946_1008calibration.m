master_bias = master_bias_1008;
master_dark = master_dark_1008(master_bias); 
t_flat = 5;
t_dark = 300;
t_science = 300;
master_flat_jcb = master_flat_jcb_1008(master_bias, master_dark ,t_flat ,t_dark);
normalized_master_flat_jcb = master_flat_jcb ./ mean (master_flat_jcb, 'all'); 

%read in the ngc6946 in JC_B filter
ngc6946_jcb_raw_01 = rfits('6946-001-jcb.fit');ngc6946_jcb_raw_01 = ngc6946_jcb_raw_01.data;  
ngc6946_jcb_raw_02 = rfits('6946-002-jcb.fit');ngc6946_jcb_raw_02 = ngc6946_jcb_raw_02.data; 
ngc6946_jcb_raw_03 = rfits('6946-003-jcb.fit');ngc6946_jcb_raw_03 = ngc6946_jcb_raw_03.data; 
ngc6946_jcb_raw_04 = rfits('6946-004-jcb.fit');ngc6946_jcb_raw_04 = ngc6946_jcb_raw_04.data;
ngc6946_jcb_raw_05 = rfits('6946-005-jcb.fit');ngc6946_jcb_raw_05 = ngc6946_jcb_raw_05.data;
ngc6946_jcb_raw_06 = rfits('6946-006-jcb.fit');ngc6946_jcb_raw_06 = ngc6946_jcb_raw_06.data;
%meridian flipped 
ngc6946_jcb_raw_07 = rfits('6946-flip-001-jcb.fit');ngc6946_jcb_raw_07 = flipud(fliplr(ngc6946_jcb_raw_07.data)); 
ngc6946_jcb_raw_08 = rfits('6946-flip-002-jcb.fit');ngc6946_jcb_raw_08 = flipud(fliplr(ngc6946_jcb_raw_08.data));
ngc6946_jcb_raw_09 = rfits('6946-flip-003-jcb.fit');ngc6946_jcb_raw_09 = flipud(fliplr(ngc6946_jcb_raw_09.data));
ngc6946_jcb_raw_10 = rfits('6946-flip-004-jcb.fit');ngc6946_jcb_raw_10 = flipud(fliplr(ngc6946_jcb_raw_10.data));
ngc6946_jcb_raw_11 = rfits('6946-flip-005-jcb.fit');ngc6946_jcb_raw_11 = flipud(fliplr(ngc6946_jcb_raw_11.data));

ngc6946_JCB_calibrated_01 = (ngc6946_jcb_raw_01 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_02 = (ngc6946_jcb_raw_02 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_03 = (ngc6946_jcb_raw_03 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_04 = (ngc6946_jcb_raw_04 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_05 = (ngc6946_jcb_raw_05 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_06 = (ngc6946_jcb_raw_06 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_07 = (ngc6946_jcb_raw_07 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_08 = (ngc6946_jcb_raw_08 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_09 = (ngc6946_jcb_raw_09 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_10 = (ngc6946_jcb_raw_10 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_11 = (ngc6946_jcb_raw_11 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;

%%
%The darks and the biases are the same; only flats change. 
master_flat_ha = master_flat_ha_1008(master_bias, master_dark ,t_flat ,t_dark);
normalized_master_flat_ha = master_flat_ha ./ mean (master_flat_ha, 'all'); 

%read in the ngc6946 in Ha filter
ngc6946_ha_raw_01 = rfits('6946-001-ha.fit');ngc6946_ha_raw_01 = ngc6946_ha_raw_01.data;  
ngc6946_ha_raw_02 = rfits('6946-002-ha.fit');ngc6946_ha_raw_02 = ngc6946_ha_raw_02.data; 
ngc6946_ha_raw_03 = rfits('6946-003-ha.fit');ngc6946_ha_raw_03 = ngc6946_ha_raw_03.data; 
ngc6946_ha_raw_04 = rfits('6946-004-ha.fit');ngc6946_ha_raw_04 = ngc6946_ha_raw_04.data;
ngc6946_ha_raw_05 = rfits('6946-005-ha.fit');ngc6946_ha_raw_05 = ngc6946_ha_raw_05.data;
ngc6946_ha_raw_06 = rfits('6946-006-ha.fit');ngc6946_ha_raw_06 = ngc6946_ha_raw_06.data; 
%meridian flipped
ngc6946_ha_raw_07 = rfits('6946-flip-001-ha.fit');ngc6946_ha_raw_07 = flipud(fliplr(ngc6946_ha_raw_07.data)); 
ngc6946_ha_raw_08 = rfits('6946-flip-002-ha.fit');ngc6946_ha_raw_08 = flipud(fliplr(ngc6946_ha_raw_08.data));
ngc6946_ha_raw_09 = rfits('6946-flip-003-ha.fit');ngc6946_ha_raw_09 = flipud(fliplr(ngc6946_ha_raw_09.data));
ngc6946_ha_raw_10 = rfits('6946-flip-004-ha.fit');ngc6946_ha_raw_10 = flipud(fliplr(ngc6946_ha_raw_10.data));
ngc6946_ha_raw_11 = rfits('6946-flip-005-ha.fit');ngc6946_ha_raw_11 = flipud(fliplr(ngc6946_ha_raw_11.data));

ngc6946_ha_calibrated_01 = (ngc6946_ha_raw_01 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_02 = (ngc6946_ha_raw_02 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_03 = (ngc6946_ha_raw_03 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_04 = (ngc6946_ha_raw_04 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_05 = (ngc6946_ha_raw_05 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_06 = (ngc6946_ha_raw_06 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_07 = (ngc6946_ha_raw_07 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_08 = (ngc6946_ha_raw_08 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_09 = (ngc6946_ha_raw_09 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_10 = (ngc6946_ha_raw_10 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_11 = (ngc6946_ha_raw_11 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;

%%
close all
figure(1)
colormap(gray(256));
imagesc(rot90(ngc6946_ha_raw_11), [1000,1200]); colorbar();

figure(2)
colormap(gray(256));
imagesc(rot90(ngc6946_jcb_raw_11), [1500,2000]); colorbar();


figure(3)
colormap(gray(256));
imagesc(rot90(ngc6946_ha_calibrated_11), [0,500]); colorbar();

figure(4)
colormap(gray(256));
imagesc(rot90(ngc6946_JCB_calibrated_11), [500,1700]); colorbar();