%% 
% Note, there are no flats taken for this night, so we will use the flats 
% taken for night 10/07, make sure those files are added to this folder.
%the darks and biases are taken on 09/30
master_bias = master_bias_0930;
master_dark = master_dark_0930(master_bias); 
t_flat = 5;
t_dark = 300;
t_science = 300;
master_flat_jcb = master_flat_jcb_1007(master_bias, master_dark ,t_flat ,t_dark);
normalized_master_flat_jcb = master_flat_jcb ./ mean (master_flat_jcb, 'all'); 

%read in the ngc6946 in JC_B filter
ngc6946_jcb_raw_01 = rfits('NGC6946-001-jcb.fit');ngc6946_jcb_raw_01 = ngc6946_jcb_raw_01.data;  
ngc6946_jcb_raw_02 = rfits('NGC6946-002-jcb.fit');ngc6946_jcb_raw_02 = ngc6946_jcb_raw_02.data; 
ngc6946_jcb_raw_03 = rfits('NGC6946-003-jcb.fit');ngc6946_jcb_raw_03 = ngc6946_jcb_raw_03.data; 
ngc6946_jcb_raw_04 = rfits('NGC6946-004-jcb.fit');ngc6946_jcb_raw_04 = ngc6946_jcb_raw_04.data;
ngc6946_jcb_raw_05 = rfits('NGC6946-005-jcb.fit');ngc6946_jcb_raw_05 = ngc6946_jcb_raw_05.data;
%meridian flipped 
ngc6946_jcb_raw_06 = rfits('NGC6946b-001-jcb.fit');ngc6946_jcb_raw_06 = ngc6946_jcb_raw_06.data; 
ngc6946_jcb_raw_07 = rfits('NGC6946b-002-jcb.fit');ngc6946_jcb_raw_07 = ngc6946_jcb_raw_07.data;
ngc6946_jcb_raw_08 = rfits('NGC6946b-003-jcb.fit');ngc6946_jcb_raw_08 = ngc6946_jcb_raw_08.data;
ngc6946_jcb_raw_09 = rfits('NGC6946b-004-jcb.fit');ngc6946_jcb_raw_09 = ngc6946_jcb_raw_09.data;
ngc6946_jcb_raw_10 = rfits('NGC6946b-005-jcb.fit');ngc6946_jcb_raw_10 = ngc6946_jcb_raw_10.data;

ngc6946_JCB_calibrated_01 = (ngc6946_jcb_raw_01 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_02 = (ngc6946_jcb_raw_02 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_03 = (ngc6946_jcb_raw_03 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_04 = (ngc6946_jcb_raw_04 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_05 = (ngc6946_jcb_raw_05 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;


ngc6946_JCB_calibrated_06 = rot90((ngc6946_jcb_raw_06 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb, 2);
ngc6946_JCB_calibrated_07 = rot90((ngc6946_jcb_raw_07 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb, 2);
ngc6946_JCB_calibrated_08 = rot90((ngc6946_jcb_raw_08 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb, 2);
ngc6946_JCB_calibrated_09 = rot90((ngc6946_jcb_raw_09 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb, 2);
ngc6946_JCB_calibrated_10 = rot90((ngc6946_jcb_raw_10 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb, 2);


%%
%The darks and the biases are the same; only flats change. 
master_flat_ha = master_flat_ha_1007(master_bias, master_dark ,t_flat ,t_dark);
normalized_master_flat_ha = master_flat_ha ./ mean (master_flat_ha, 'all'); 

%read in the ngc6946 in Ha filter
ngc6946_ha_raw_01 = rfits('NGC6946-001-ha.fit');ngc6946_ha_raw_01 = ngc6946_ha_raw_01.data;  
ngc6946_ha_raw_02 = rfits('NGC6946-002-ha.fit');ngc6946_ha_raw_02 = ngc6946_ha_raw_02.data; 
ngc6946_ha_raw_03 = rfits('NGC6946-003-ha.fit');ngc6946_ha_raw_03 = ngc6946_ha_raw_03.data; 
ngc6946_ha_raw_04 = rfits('NGC6946-004-ha.fit');ngc6946_ha_raw_04 = ngc6946_ha_raw_04.data;
ngc6946_ha_raw_05 = rfits('NGC6946-005-ha.fit');ngc6946_ha_raw_05 = ngc6946_ha_raw_05.data;
%meridian flipped 
ngc6946_ha_raw_06 = rfits('NGC6946b-001-ha.fit');ngc6946_ha_raw_06 = ngc6946_ha_raw_06.data; 
ngc6946_ha_raw_07 = rfits('NGC6946b-002-ha.fit');ngc6946_ha_raw_07 = ngc6946_ha_raw_07.data;
ngc6946_ha_raw_08 = rfits('NGC6946b-003-ha.fit');ngc6946_ha_raw_08 = ngc6946_ha_raw_08.data;
ngc6946_ha_raw_09 = rfits('NGC6946b-004-ha.fit');ngc6946_ha_raw_09 = ngc6946_ha_raw_09.data;
ngc6946_ha_raw_10 = rfits('NGC6946b-005-ha.fit');ngc6946_ha_raw_10 = ngc6946_ha_raw_10.data;


ngc6946_ha_calibrated_01 = (ngc6946_ha_raw_01 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_02 = (ngc6946_ha_raw_02 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_03 = (ngc6946_ha_raw_03 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_04 = (ngc6946_ha_raw_04 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_05 = (ngc6946_ha_raw_05 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;


ngc6946_ha_calibrated_06 = rot90((ngc6946_ha_raw_06 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha, 2);
ngc6946_ha_calibrated_07 = rot90((ngc6946_ha_raw_07 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha, 2);
ngc6946_ha_calibrated_08 = rot90((ngc6946_ha_raw_08 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha, 2);
ngc6946_ha_calibrated_09 = rot90((ngc6946_ha_raw_09 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha, 2);
ngc6946_ha_calibrated_10 = rot90((ngc6946_ha_raw_10 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha, 2);

%%
close all
figure(1)
colormap(gray(256));
imagesc(rot90(ngc6946_ha_raw_10), [1000,1200]); colorbar();

figure(2)
colormap(gray(256));
imagesc(rot90(ngc6946_jcb_raw_10), [1000,2500]); colorbar();


figure(3)
colormap(gray(256));
imagesc(rot90(ngc6946_ha_calibrated_10), [0,500]); colorbar();

figure(4)
colormap(gray(256));
imagesc(rot90(ngc6946_JCB_calibrated_10), [500,1700]); colorbar();

%%
wfits(ngc6946_JCB_calibrated_01, '0930-calibrated-jcb-1.fit')
wfits(ngc6946_JCB_calibrated_02, '0930-calibrated-jcb-2.fit')
wfits(ngc6946_JCB_calibrated_03, '0930-calibrated-jcb-3.fit')
wfits(ngc6946_JCB_calibrated_04, '0930-calibrated-jcb-4.fit')
wfits(ngc6946_JCB_calibrated_05, '0930-calibrated-jcb-5.fit')
wfits(ngc6946_JCB_calibrated_06, '0930-calibrated-jcb-6.fit')
wfits(ngc6946_JCB_calibrated_07, '0930-calibrated-jcb-7.fit')
wfits(ngc6946_JCB_calibrated_08, '0930-calibrated-jcb-8.fit')
wfits(ngc6946_JCB_calibrated_09, '0930-calibrated-jcb-9.fit')
wfits(ngc6946_JCB_calibrated_10, '0930-calibrated-jcb-10.fit')
 
 
wfits(ngc6946_ha_calibrated_01, '0930-calibrated-ha-1.fit')
wfits(ngc6946_ha_calibrated_02, '0930-calibrated-ha-2.fit')
wfits(ngc6946_ha_calibrated_03, '0930-calibrated-ha-3.fit')
wfits(ngc6946_ha_calibrated_04, '0930-calibrated-ha-4.fit')
wfits(ngc6946_ha_calibrated_05, '0930-calibrated-ha-5.fit')
wfits(ngc6946_ha_calibrated_06, '0930-calibrated-ha-6.fit')
wfits(ngc6946_ha_calibrated_07, '0930-calibrated-ha-7.fit')
wfits(ngc6946_ha_calibrated_08, '0930-calibrated-ha-8.fit')
wfits(ngc6946_ha_calibrated_09, '0930-calibrated-ha-9.fit')
wfits(ngc6946_ha_calibrated_10, '0930-calibrated-ha-10.fit')