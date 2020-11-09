function [master_flat_array_ha_1008] = master_flat_ha_1008(masterbias, masterdark ,t_flat ,t_dark)
%%computes the master flat for ha given the master bias and master dark
%read in Ha flats
ngc6946_flat_ha_01 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_01 = ngc6946_flat_ha_01.data;
ngc6946_flat_ha_02 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_02 = ngc6946_flat_ha_02.data;
ngc6946_flat_ha_03 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_03 = ngc6946_flat_ha_03.data;
ngc6946_flat_ha_04 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_04 = ngc6946_flat_ha_04.data;
ngc6946_flat_ha_05 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_05 = ngc6946_flat_ha_05.data;
ngc6946_flat_ha_06 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_06 = ngc6946_flat_ha_06.data;
ngc6946_flat_ha_07 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_07 = ngc6946_flat_ha_07.data;
ngc6946_flat_ha_08 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_08 = ngc6946_flat_ha_08.data;
ngc6946_flat_ha_09 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_09 = ngc6946_flat_ha_09.data;
ngc6946_flat_ha_10 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_10 = ngc6946_flat_ha_10.data;
ngc6946_flat_ha_11 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_11 = ngc6946_flat_ha_11.data;
ngc6946_flat_ha_12 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_12 = ngc6946_flat_ha_12.data;
ngc6946_flat_ha_13 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_13 = ngc6946_flat_ha_13.data;
ngc6946_flat_ha_14 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_14 = ngc6946_flat_ha_14.data;
ngc6946_flat_ha_15 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_15 = ngc6946_flat_ha_15.data;
ngc6946_flat_ha_16 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_16 = ngc6946_flat_ha_16.data;
ngc6946_flat_ha_17 = rfits('flats-001-ha.fit'); ngc6946_flat_ha_17 = ngc6946_flat_ha_17.data;


flat_calib_01 = ngc6946_flat_ha_01 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_02 = ngc6946_flat_ha_02 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_03 = ngc6946_flat_ha_03 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_04 = ngc6946_flat_ha_04 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_05 = ngc6946_flat_ha_05 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_06 = ngc6946_flat_ha_06 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_07 = ngc6946_flat_ha_07 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_08 = ngc6946_flat_ha_08 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_09 = ngc6946_flat_ha_09 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_10 = ngc6946_flat_ha_10 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_11 = ngc6946_flat_ha_11 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_12 = ngc6946_flat_ha_12 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_13 = ngc6946_flat_ha_13 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_14 = ngc6946_flat_ha_14 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_15 = ngc6946_flat_ha_15 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_16 = ngc6946_flat_ha_16 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_17 = ngc6946_flat_ha_17 - masterbias - (t_flat/t_dark)*masterdark;

flat_stacked_ha_1008 = cat(3, flat_calib_01, flat_calib_02, flat_calib_03, flat_calib_04, flat_calib_05, flat_calib_06, flat_calib_07, flat_calib_08, flat_calib_09, flat_calib_10, flat_calib_11, flat_calib_12, flat_calib_13, flat_calib_14, flat_calib_15, flat_calib_16, flat_calib_17); 
master_flat_array_ha_1008 = median (flat_stacked_ha_1008, 3);
end

