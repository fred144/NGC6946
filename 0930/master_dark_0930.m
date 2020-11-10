function [master_dark_array_0930] = master_dark_0930(masterbias)
%Computed the master dark for 10/07 given the masterbias for 10/07
%   have the files in the same folder
%read in dark images
ngc6946_dark_01 = rfits('calib-001-d.fit'); ngc6946_dark_01 = ngc6946_dark_01.data;  
ngc6946_dark_02 = rfits('calib-002-d.fit'); ngc6946_dark_02 = ngc6946_dark_02.data; 
ngc6946_dark_03 = rfits('calib-003-d.fit'); ngc6946_dark_03 = ngc6946_dark_03.data; 
ngc6946_dark_04 = rfits('calib-004-d.fit'); ngc6946_dark_04 = ngc6946_dark_04.data; 
ngc6946_dark_05 = rfits('calib-005-d.fit'); ngc6946_dark_05 = ngc6946_dark_05.data; 
ngc6946_dark_06 = rfits('calib-006-d.fit'); ngc6946_dark_06 = ngc6946_dark_06.data; 
ngc6946_dark_07 = rfits('calib-007-d.fit'); ngc6946_dark_07 = ngc6946_dark_07.data; 
ngc6946_dark_08 = rfits('calib-008-d.fit'); ngc6946_dark_08 = ngc6946_dark_08.data; 
ngc6946_dark_09 = rfits('calib-009-d.fit'); ngc6946_dark_09 = ngc6946_dark_09.data; 
ngc6946_dark_10 = rfits('calib-010-d.fit'); ngc6946_dark_10 = ngc6946_dark_10.data; 



dark_no_bias_01 = ngc6946_dark_01 - masterbias;
dark_no_bias_02 = ngc6946_dark_02 - masterbias;
dark_no_bias_03 = ngc6946_dark_03 - masterbias;
dark_no_bias_04 = ngc6946_dark_04 - masterbias;
dark_no_bias_05 = ngc6946_dark_05 - masterbias;
dark_no_bias_06 = ngc6946_dark_06 - masterbias;
dark_no_bias_07 = ngc6946_dark_07 - masterbias;
dark_no_bias_08 = ngc6946_dark_08 - masterbias;
dark_no_bias_09 = ngc6946_dark_09 - masterbias;
dark_no_bias_10 = ngc6946_dark_10 - masterbias;


dark_stacked_0930 = cat(3, dark_no_bias_01, dark_no_bias_02, dark_no_bias_03, dark_no_bias_04, dark_no_bias_05, dark_no_bias_06, dark_no_bias_07, dark_no_bias_08, dark_no_bias_09, dark_no_bias_10) ;  
master_dark_array_0930 = median (dark_stacked_0930, 3); 
end

