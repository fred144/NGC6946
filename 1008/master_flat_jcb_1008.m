function [master_flat_array_jcb_1008] = master_flat_jcb_1008(masterbias, masterdark ,t_flat ,t_dark)
%computes the master flat for jcb given the master bias and master dark
%   make sure all required files are in the same folder
%read in JCB flats
ngc6946_flat_jcb_01 = rfits('flats-001-JCB.fit'); ngc6946_flat_jcb_01 = ngc6946_flat_jcb_01.data;
ngc6946_flat_jcb_02 = rfits('flats-002-JCB.fit'); ngc6946_flat_jcb_02 = ngc6946_flat_jcb_02.data;
ngc6946_flat_jcb_03 = rfits('flats-003-JCB.fit'); ngc6946_flat_jcb_03 = ngc6946_flat_jcb_03.data;
ngc6946_flat_jcb_04 = rfits('flats-004-JCB.fit'); ngc6946_flat_jcb_04 = ngc6946_flat_jcb_04.data;
ngc6946_flat_jcb_05 = rfits('flats-005-JCB.fit'); ngc6946_flat_jcb_05 = ngc6946_flat_jcb_05.data;
ngc6946_flat_jcb_06 = rfits('flats-006-JCB.fit'); ngc6946_flat_jcb_06 = ngc6946_flat_jcb_06.data;
ngc6946_flat_jcb_07 = rfits('flats-007-JCB.fit'); ngc6946_flat_jcb_07 = ngc6946_flat_jcb_07.data;
ngc6946_flat_jcb_08 = rfits('flats-008-JCB.fit'); ngc6946_flat_jcb_08 = ngc6946_flat_jcb_08.data;
ngc6946_flat_jcb_09 = rfits('flats-009-JCB.fit'); ngc6946_flat_jcb_09 = ngc6946_flat_jcb_09.data;
ngc6946_flat_jcb_10 = rfits('flats-010-JCB.fit'); ngc6946_flat_jcb_10 = ngc6946_flat_jcb_10.data;
ngc6946_flat_jcb_11 = rfits('flats-011-JCB.fit'); ngc6946_flat_jcb_11 = ngc6946_flat_jcb_11.data;
ngc6946_flat_jcb_12 = rfits('flats-012-JCB.fit'); ngc6946_flat_jcb_12 = ngc6946_flat_jcb_12.data;
ngc6946_flat_jcb_13 = rfits('flats-013-JCB.fit'); ngc6946_flat_jcb_13 = ngc6946_flat_jcb_13.data;
ngc6946_flat_jcb_14 = rfits('flats-014-JCB.fit'); ngc6946_flat_jcb_14 = ngc6946_flat_jcb_14.data;
ngc6946_flat_jcb_15 = rfits('flats-015-JCB.fit'); ngc6946_flat_jcb_15 = ngc6946_flat_jcb_15.data;
ngc6946_flat_jcb_16 = rfits('flats-016-JCB.fit'); ngc6946_flat_jcb_16 = ngc6946_flat_jcb_16.data;
ngc6946_flat_jcb_17 = rfits('flats-017-JCB.fit'); ngc6946_flat_jcb_17 = ngc6946_flat_jcb_17.data;


flat_calib_01 = ngc6946_flat_jcb_01 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_02 = ngc6946_flat_jcb_02 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_03 = ngc6946_flat_jcb_03 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_04 = ngc6946_flat_jcb_04 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_05 = ngc6946_flat_jcb_05 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_06 = ngc6946_flat_jcb_06 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_07 = ngc6946_flat_jcb_07 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_08 = ngc6946_flat_jcb_08 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_09 = ngc6946_flat_jcb_09 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_10 = ngc6946_flat_jcb_10 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_11 = ngc6946_flat_jcb_11 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_12 = ngc6946_flat_jcb_12 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_13 = ngc6946_flat_jcb_13 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_14 = ngc6946_flat_jcb_14 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_15 = ngc6946_flat_jcb_15 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_16 = ngc6946_flat_jcb_16 - masterbias - (t_flat/t_dark)*masterdark;
flat_calib_17 = ngc6946_flat_jcb_17 - masterbias - (t_flat/t_dark)*masterdark;

flat_stacked_jcb_1008 = cat(3, flat_calib_01, flat_calib_02, flat_calib_03, flat_calib_04, flat_calib_05, flat_calib_06, flat_calib_07, flat_calib_08, flat_calib_09, flat_calib_10, flat_calib_11, flat_calib_12, flat_calib_13, flat_calib_14, flat_calib_15, flat_calib_16, flat_calib_17); 
master_flat_array_jcb_1008 = median (flat_stacked_jcb_1008, 3);
end

