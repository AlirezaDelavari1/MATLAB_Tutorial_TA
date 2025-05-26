clc, clearvars

%rltool

s = tf('s');
rltool(1/s/(s+1),1)
%rltool(1/s/(s+1),(s+2)/(s+8))