function [master_bias_array_1007] = master_bias_1007
%computes a master bias for night 10/07
%   have the filed in the same folder.
%read in bias images
ngc6946_bi_01 = rfits('calib-001-bi.fit'); ngc6946_bi_01 = ngc6946_bi_01.data;
ngc6946_bi_02 = rfits('calib-002-bi.fit'); ngc6946_bi_02 = ngc6946_bi_02.data;
ngc6946_bi_03 = rfits('calib-003-bi.fit'); ngc6946_bi_03 = ngc6946_bi_03.data;
ngc6946_bi_04 = rfits('calib-004-bi.fit'); ngc6946_bi_04 = ngc6946_bi_04.data;
ngc6946_bi_05 = rfits('calib-005-bi.fit'); ngc6946_bi_05 = ngc6946_bi_05.data;
ngc6946_bi_06 = rfits('calib-006-bi.fit'); ngc6946_bi_06 = ngc6946_bi_06.data;
ngc6946_bi_07 = rfits('calib-007-bi.fit'); ngc6946_bi_07 = ngc6946_bi_07.data;
ngc6946_bi_08 = rfits('calib-008-bi.fit'); ngc6946_bi_08 = ngc6946_bi_08.data;
ngc6946_bi_09 = rfits('calib-009-bi.fit'); ngc6946_bi_09 = ngc6946_bi_09.data;
ngc6946_bi_10 = rfits('calib-010-bi.fit'); ngc6946_bi_10 = ngc6946_bi_10.data;
ngc6946_bi_11 = rfits('calib-011-bi.fit'); ngc6946_bi_11 = ngc6946_bi_11.data;
ngc6946_bi_12 = rfits('calib-012-bi.fit'); ngc6946_bi_12 = ngc6946_bi_12.data;
ngc6946_bi_13 = rfits('calib-013-bi.fit'); ngc6946_bi_13 = ngc6946_bi_13.data;
ngc6946_bi_14 = rfits('calib-014-bi.fit'); ngc6946_bi_14 = ngc6946_bi_14.data;
ngc6946_bi_15 = rfits('calib-015-bi.fit'); ngc6946_bi_15 = ngc6946_bi_15.data;
ngc6946_bi_16 = rfits('calib-016-bi.fit'); ngc6946_bi_16 = ngc6946_bi_16.data;
ngc6946_bi_17 = rfits('calib-017-bi.fit'); ngc6946_bi_17 = ngc6946_bi_17.data;

bias_stacked_1007 = cat(3, ngc6946_bi_01, ngc6946_bi_02, ngc6946_bi_03, ngc6946_bi_04, ngc6946_bi_05, ngc6946_bi_06, ngc6946_bi_07, ngc6946_bi_08, ngc6946_bi_09, ngc6946_bi_10, ngc6946_bi_11, ngc6946_bi_12, ngc6946_bi_13, ngc6946_bi_14, ngc6946_bi_15, ngc6946_bi_16,ngc6946_bi_17) ;
master_bias_array_1007 = median(bias_stacked_1007, 3);
%figure(4)
%colormap(gray(256));
%imagesc(master_bias_array, [1000,1020]); colorbar();
end

