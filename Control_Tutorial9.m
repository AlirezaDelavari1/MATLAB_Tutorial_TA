clc, clearvars

num = 1;
den = conv([1 0], conv([1 1], [1 5])); %G(s) = 1 / [s(s+1)(s+5)]
G = tf(num, den)
sisotool(G, 1)

%%Requirements:
% Phase Margin ≥ 45°
% Settling Time ≤ 3 sec