%%
master_bias = master_bias_1007;
master_dark = master_dark_1007(master_bias); 
t_flat = 5;
t_dark = 120;
t_science = 120;
master_flat_jcb = master_flat_jcb_1007(master_bias, master_dark ,t_flat ,t_dark);
normalized_master_flat_jcb = master_flat_jcb ./ mean (master_flat_jcb, 'all'); 

%read in the ngc6946 in JC_B filter
ngc6946_jcb_raw_01 = rfits('6946-001-jcb.fit');ngc6946_jcb_raw_01 = ngc6946_jcb_raw_01.data;  
ngc6946_jcb_raw_02 = rfits('6946-002-jcb.fit');ngc6946_jcb_raw_02 = ngc6946_jcb_raw_02.data; 
ngc6946_jcb_raw_03 = rfits('6946-003-jcb.fit');ngc6946_jcb_raw_03 = ngc6946_jcb_raw_03.data; 
ngc6946_jcb_raw_04 = rfits('6946-004-jcb.fit');ngc6946_jcb_raw_04 = ngc6946_jcb_raw_04.data;
ngc6946_jcb_raw_05 = rfits('6946-005-jcb.fit');ngc6946_jcb_raw_05 = ngc6946_jcb_raw_05.data;
ngc6946_jcb_raw_06 = rfits('6946-006-jcb.fit');ngc6946_jcb_raw_06 = ngc6946_jcb_raw_06.data;
ngc6946_jcb_raw_07 = rfits('6946-007-jcb.fit');ngc6946_jcb_raw_07 = ngc6946_jcb_raw_07.data;
ngc6946_jcb_raw_08 = rfits('6946-008-jcb.fit');ngc6946_jcb_raw_08 = ngc6946_jcb_raw_08.data;
ngc6946_jcb_raw_09 = rfits('6946-009-jcb.fit');ngc6946_jcb_raw_09 = ngc6946_jcb_raw_09.data;
ngc6946_jcb_raw_10 = rfits('6946-010-jcb.fit');ngc6946_jcb_raw_10 = ngc6946_jcb_raw_10.data;
ngc6946_jcb_raw_11 = rfits('6946-011-jcb.fit');ngc6946_jcb_raw_11 = ngc6946_jcb_raw_11.data;
%meridian flipped 
ngc6946_jcb_raw_12 = rfits('6946-flip-001-jcb.fit');ngc6946_jcb_raw_12 = flipud(fliplr(ngc6946_jcb_raw_12.data)); 
ngc6946_jcb_raw_13 = rfits('6946-flip-002-jcb.fit');ngc6946_jcb_raw_13 = flipud(fliplr(ngc6946_jcb_raw_13.data));
ngc6946_jcb_raw_14 = rfits('6946-flip-003-jcb.fit');ngc6946_jcb_raw_14 = flipud(fliplr(ngc6946_jcb_raw_14.data));
ngc6946_jcb_raw_15 = rfits('6946-flip-004-jcb.fit');ngc6946_jcb_raw_15 = flipud(fliplr(ngc6946_jcb_raw_15.data));
ngc6946_jcb_raw_16 = rfits('6946-flip-005-jcb.fit');ngc6946_jcb_raw_16 = flipud(fliplr(ngc6946_jcb_raw_16.data));
ngc6946_jcb_raw_17 = rfits('6946-flip-006-jcb.fit');ngc6946_jcb_raw_17 = flipud(fliplr(ngc6946_jcb_raw_17.data));
ngc6946_jcb_raw_18 = rfits('6946-flip-007-jcb.fit');ngc6946_jcb_raw_18 = flipud(fliplr(ngc6946_jcb_raw_18.data));
ngc6946_jcb_raw_19 = rfits('6946-flip-008-jcb.fit');ngc6946_jcb_raw_19 = flipud(fliplr(ngc6946_jcb_raw_19.data));
ngc6946_jcb_raw_20 = rfits('6946-flip-009-jcb.fit');ngc6946_jcb_raw_20 = flipud(fliplr(ngc6946_jcb_raw_20.data));
ngc6946_jcb_raw_21 = rfits('6946-flip-010-jcb.fit');ngc6946_jcb_raw_21 = flipud(fliplr(ngc6946_jcb_raw_21.data));
ngc6946_jcb_raw_22 = rfits('6946-flip-011-jcb.fit');ngc6946_jcb_raw_22 = flipud(fliplr(ngc6946_jcb_raw_22.data));
ngc6946_jcb_raw_23 = rfits('6946-flip-012-jcb.fit');ngc6946_jcb_raw_23 = flipud(fliplr(ngc6946_jcb_raw_23.data));
ngc6946_jcb_raw_24 = rfits('6946-flip-013-jcb.fit');ngc6946_jcb_raw_24 = flipud(fliplr(ngc6946_jcb_raw_24.data));
ngc6946_jcb_raw_25 = rfits('6946-flip-014-jcb.fit');ngc6946_jcb_raw_25 = flipud(fliplr(ngc6946_jcb_raw_25.data));
ngc6946_jcb_raw_26 = rfits('6946-flip-015-jcb.fit');ngc6946_jcb_raw_26 = flipud(fliplr(ngc6946_jcb_raw_26.data));
ngc6946_jcb_raw_27 = rfits('6946-flip-016-jcb.fit');ngc6946_jcb_raw_27 = flipud(fliplr(ngc6946_jcb_raw_27.data));
ngc6946_jcb_raw_28 = rfits('6946-flip-017-jcb.fit');ngc6946_jcb_raw_28 = flipud(fliplr(ngc6946_jcb_raw_28.data));
ngc6946_jcb_raw_29 = rfits('6946-flip-018-jcb.fit');ngc6946_jcb_raw_29 = flipud(fliplr(ngc6946_jcb_raw_29.data));
ngc6946_jcb_raw_30 = rfits('6946-flip-019-jcb.fit');ngc6946_jcb_raw_30 = flipud(fliplr(ngc6946_jcb_raw_30.data));
ngc6946_jcb_raw_31 = rfits('6946-flip-020-jcb.fit');ngc6946_jcb_raw_31 = flipud(fliplr(ngc6946_jcb_raw_31.data));
ngc6946_jcb_raw_32 = rfits('6946-flip-021-jcb.fit');ngc6946_jcb_raw_32 = flipud(fliplr(ngc6946_jcb_raw_32.data));
ngc6946_jcb_raw_33 = rfits('6946-flip-022-jcb.fit');ngc6946_jcb_raw_33 = flipud(fliplr(ngc6946_jcb_raw_33.data));
ngc6946_jcb_raw_34 = rfits('6946-flip-023-jcb.fit');ngc6946_jcb_raw_34 = flipud(fliplr(ngc6946_jcb_raw_34.data));
ngc6946_jcb_raw_35 = rfits('6946-flip-024-jcb.fit');ngc6946_jcb_raw_35 = flipud(fliplr(ngc6946_jcb_raw_35.data));
ngc6946_jcb_raw_36 = rfits('6946-flip-025-jcb.fit');ngc6946_jcb_raw_36 = flipud(fliplr(ngc6946_jcb_raw_36.data));
ngc6946_jcb_raw_37 = rfits('6946-flip-026-jcb.fit');ngc6946_jcb_raw_37 = flipud(fliplr(ngc6946_jcb_raw_37.data));
ngc6946_jcb_raw_38 = rfits('6946-flip-027-jcb.fit');ngc6946_jcb_raw_38 = flipud(fliplr(ngc6946_jcb_raw_38.data));
ngc6946_jcb_raw_39 = rfits('6946-flip-028-jcb.fit');ngc6946_jcb_raw_39 = flipud(fliplr(ngc6946_jcb_raw_39.data));
ngc6946_jcb_raw_40 = rfits('6946-flip-029-jcb.fit');ngc6946_jcb_raw_40 = flipud(fliplr(ngc6946_jcb_raw_40.data));

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
ngc6946_JCB_calibrated_12 = (ngc6946_jcb_raw_12 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_13 = (ngc6946_jcb_raw_13 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_14 = (ngc6946_jcb_raw_14 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_15 = (ngc6946_jcb_raw_15 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_16 = (ngc6946_jcb_raw_16 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_17 = (ngc6946_jcb_raw_17 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_18 = (ngc6946_jcb_raw_18 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_19 = (ngc6946_jcb_raw_19 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_20 = (ngc6946_jcb_raw_20 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_21 = (ngc6946_jcb_raw_21 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_22 = (ngc6946_jcb_raw_22 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_23 = (ngc6946_jcb_raw_23 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_24 = (ngc6946_jcb_raw_24 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_25 = (ngc6946_jcb_raw_25 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_26 = (ngc6946_jcb_raw_26 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_27 = (ngc6946_jcb_raw_27 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_28 = (ngc6946_jcb_raw_28 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_29 = (ngc6946_jcb_raw_29 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_30 = (ngc6946_jcb_raw_30 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_31 = (ngc6946_jcb_raw_31 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_32 = (ngc6946_jcb_raw_32 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_33 = (ngc6946_jcb_raw_33 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_34 = (ngc6946_jcb_raw_34 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_35 = (ngc6946_jcb_raw_35 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_36 = (ngc6946_jcb_raw_36 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_37 = (ngc6946_jcb_raw_37 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_38 = (ngc6946_jcb_raw_38 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_39 = (ngc6946_jcb_raw_39 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;
ngc6946_JCB_calibrated_40 = (ngc6946_jcb_raw_40 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_jcb;

%%

%The darks and the biases are the same; only flats change. 
master_flat_ha = master_flat_ha_1007(master_bias, master_dark ,t_flat ,t_dark);
normalized_master_flat_ha = master_flat_ha ./ mean (master_flat_ha, 'all'); 

%read in the ngc6946 in Ha filter
ngc6946_ha_raw_01 = rfits('6946-001-ha.fit');ngc6946_ha_raw_01 = ngc6946_ha_raw_01.data;  
ngc6946_ha_raw_02 = rfits('6946-002-ha.fit');ngc6946_ha_raw_02 = ngc6946_ha_raw_02.data; 
ngc6946_ha_raw_03 = rfits('6946-003-ha.fit');ngc6946_ha_raw_03 = ngc6946_ha_raw_03.data; 
ngc6946_ha_raw_04 = rfits('6946-004-ha.fit');ngc6946_ha_raw_04 = ngc6946_ha_raw_04.data;
ngc6946_ha_raw_05 = rfits('6946-005-ha.fit');ngc6946_ha_raw_05 = ngc6946_ha_raw_05.data;
ngc6946_ha_raw_06 = rfits('6946-006-ha.fit');ngc6946_ha_raw_06 = ngc6946_ha_raw_06.data;
ngc6946_ha_raw_07 = rfits('6946-007-ha.fit');ngc6946_ha_raw_07 = ngc6946_ha_raw_07.data;
ngc6946_ha_raw_08 = rfits('6946-008-ha.fit');ngc6946_ha_raw_08 = ngc6946_ha_raw_08.data;
ngc6946_ha_raw_09 = rfits('6946-009-ha.fit');ngc6946_ha_raw_09 = ngc6946_ha_raw_09.data;
ngc6946_ha_raw_10 = rfits('6946-010-ha.fit');ngc6946_ha_raw_10 = ngc6946_ha_raw_10.data;
ngc6946_ha_raw_11 = rfits('6946-011-ha.fit');ngc6946_ha_raw_11 = ngc6946_ha_raw_11.data;
%meridian flipped 
ngc6946_ha_raw_12 = rfits('6946-flip-001-ha.fit');ngc6946_ha_raw_12 = flipud(fliplr(ngc6946_ha_raw_12.data)); 
ngc6946_ha_raw_13 = rfits('6946-flip-002-ha.fit');ngc6946_ha_raw_13 = flipud(fliplr(ngc6946_ha_raw_13.data));
ngc6946_ha_raw_14 = rfits('6946-flip-003-ha.fit');ngc6946_ha_raw_14 = flipud(fliplr(ngc6946_ha_raw_14.data));
ngc6946_ha_raw_15 = rfits('6946-flip-004-ha.fit');ngc6946_ha_raw_15 = flipud(fliplr(ngc6946_ha_raw_15.data));
ngc6946_ha_raw_16 = rfits('6946-flip-005-ha.fit');ngc6946_ha_raw_16 = flipud(fliplr(ngc6946_ha_raw_16.data));
ngc6946_ha_raw_17 = rfits('6946-flip-006-ha.fit');ngc6946_ha_raw_17 = flipud(fliplr(ngc6946_ha_raw_17.data));
ngc6946_ha_raw_18 = rfits('6946-flip-007-ha.fit');ngc6946_ha_raw_18 = flipud(fliplr(ngc6946_ha_raw_18.data));
ngc6946_ha_raw_19 = rfits('6946-flip-008-ha.fit');ngc6946_ha_raw_19 = flipud(fliplr(ngc6946_ha_raw_19.data));
ngc6946_ha_raw_20 = rfits('6946-flip-009-ha.fit');ngc6946_ha_raw_20 = flipud(fliplr(ngc6946_ha_raw_20.data));
ngc6946_ha_raw_21 = rfits('6946-flip-010-ha.fit');ngc6946_ha_raw_21 = flipud(fliplr(ngc6946_ha_raw_21.data));
ngc6946_ha_raw_22 = rfits('6946-flip-011-ha.fit');ngc6946_ha_raw_22 = flipud(fliplr(ngc6946_ha_raw_22.data));
ngc6946_ha_raw_23 = rfits('6946-flip-012-ha.fit');ngc6946_ha_raw_23 = flipud(fliplr(ngc6946_ha_raw_23.data));
ngc6946_ha_raw_24 = rfits('6946-flip-013-ha.fit');ngc6946_ha_raw_24 = flipud(fliplr(ngc6946_ha_raw_24.data));
ngc6946_ha_raw_25 = rfits('6946-flip-014-ha.fit');ngc6946_ha_raw_25 = flipud(fliplr(ngc6946_ha_raw_25.data));
ngc6946_ha_raw_26 = rfits('6946-flip-015-ha.fit');ngc6946_ha_raw_26 = flipud(fliplr(ngc6946_ha_raw_26.data));
ngc6946_ha_raw_27 = rfits('6946-flip-016-ha.fit');ngc6946_ha_raw_27 = flipud(fliplr(ngc6946_ha_raw_27.data));
ngc6946_ha_raw_28 = rfits('6946-flip-017-ha.fit');ngc6946_ha_raw_28 = flipud(fliplr(ngc6946_ha_raw_28.data));
ngc6946_ha_raw_29 = rfits('6946-flip-018-ha.fit');ngc6946_ha_raw_29 = flipud(fliplr(ngc6946_ha_raw_29.data));
ngc6946_ha_raw_30 = rfits('6946-flip-019-ha.fit');ngc6946_ha_raw_30 = flipud(fliplr(ngc6946_ha_raw_30.data));
ngc6946_ha_raw_31 = rfits('6946-flip-020-ha.fit');ngc6946_ha_raw_31 = flipud(fliplr(ngc6946_ha_raw_31.data));
ngc6946_ha_raw_32 = rfits('6946-flip-021-ha.fit');ngc6946_ha_raw_32 = flipud(fliplr(ngc6946_ha_raw_32.data));
ngc6946_ha_raw_33 = rfits('6946-flip-022-ha.fit');ngc6946_ha_raw_33 = flipud(fliplr(ngc6946_ha_raw_33.data));
ngc6946_ha_raw_34 = rfits('6946-flip-023-ha.fit');ngc6946_ha_raw_34 = flipud(fliplr(ngc6946_ha_raw_34.data));
ngc6946_ha_raw_35 = rfits('6946-flip-024-ha.fit');ngc6946_ha_raw_35 = flipud(fliplr(ngc6946_ha_raw_35.data));
ngc6946_ha_raw_36 = rfits('6946-flip-025-ha.fit');ngc6946_ha_raw_36 = flipud(fliplr(ngc6946_ha_raw_36.data));
ngc6946_ha_raw_37 = rfits('6946-flip-026-ha.fit');ngc6946_ha_raw_37 = flipud(fliplr(ngc6946_ha_raw_37.data));
ngc6946_ha_raw_38 = rfits('6946-flip-027-ha.fit');ngc6946_ha_raw_38 = flipud(fliplr(ngc6946_ha_raw_38.data));
ngc6946_ha_raw_39 = rfits('6946-flip-028-ha.fit');ngc6946_ha_raw_39 = flipud(fliplr(ngc6946_ha_raw_39.data));
ngc6946_ha_raw_40 = rfits('6946-flip-029-ha.fit');ngc6946_ha_raw_40 = flipud(fliplr(ngc6946_ha_raw_40.data));

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
ngc6946_ha_calibrated_12 = (ngc6946_ha_raw_12 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_13 = (ngc6946_ha_raw_13 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_14 = (ngc6946_ha_raw_14 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_15 = (ngc6946_ha_raw_15 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_16 = (ngc6946_ha_raw_16 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_17 = (ngc6946_ha_raw_17 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_18 = (ngc6946_ha_raw_18 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_19 = (ngc6946_ha_raw_19 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_20 = (ngc6946_ha_raw_20 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_21 = (ngc6946_ha_raw_21 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_22 = (ngc6946_ha_raw_22 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_23 = (ngc6946_ha_raw_23 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_24 = (ngc6946_ha_raw_24 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_25 = (ngc6946_ha_raw_25 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_26 = (ngc6946_ha_raw_26 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_27 = (ngc6946_ha_raw_27 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_28 = (ngc6946_ha_raw_28 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_29 = (ngc6946_ha_raw_29 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_30 = (ngc6946_ha_raw_30 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_31 = (ngc6946_ha_raw_31 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_32 = (ngc6946_ha_raw_32 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_33 = (ngc6946_ha_raw_33 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_34 = (ngc6946_ha_raw_34 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_35 = (ngc6946_ha_raw_35 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_36 = (ngc6946_ha_raw_36 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_37 = (ngc6946_ha_raw_37 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_38 = (ngc6946_ha_raw_38 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_39 = (ngc6946_ha_raw_39 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;
ngc6946_ha_calibrated_40 = (ngc6946_ha_raw_40 - (t_science/t_dark)*master_dark - master_bias) ./ normalized_master_flat_ha;


%%
close all
figure(1)
colormap(gray(256));
imagesc(rot90(ngc6946_ha_raw_40), [1000,1200]); colorbar();

figure(2)
colormap(gray(256));
imagesc(rot90(ngc6946_jcb_raw_40), [1000,1500]); colorbar();


figure(3)
colormap(gray(256));
imagesc(rot90(ngc6946_ha_calibrated_40), [0,500]); colorbar();

figure(4)
colormap(gray(256));
imagesc(rot90(ngc6946_JCB_calibrated_40), [0,1000]); colorbar();