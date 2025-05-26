clc, clearvars


s = tf('s');

%%Basic Example
G = 1/(s*(s+2));
rlocus(G);       %Plot root locus
title('Root Locus of G(s) = 1/(s(s+2))');
grid on;
grid off;

%%Example-1
% num = [1 1];
% den = [1 0 0];
% sys = tf(num, den);
% rlocus(sys)
% hold on
% rlocus(-sys, '--')
% hold off

%%Example-2
% num = [1 1];
% den = [1 4 0 0];
% sys = tf(num, den);
% rlocus(sys)
% hold on
% rlocus(-sys, '--')
% hold off

%%Example-3.1
% num = [1 1];
% den = [1 9 0 0];
% sys = tf(num, den);
% rlocus(sys)
% hold on
% rlocus(-sys, '--')
% hold off


%%Example-3.2
% num = [1 1];
% den = [1 12 0 0];
% sys = tf(num, den);
% rlocus(sys)
% hold on
% rlocus(-sys, '--')
% hold off


%%Example-4
% num = [1 1];
% den = conv([1 4 0], [1 2 2]);
% sys = tf(num, den);
% rlocus(sys)
% hold on
% rlocus(-sys, '--')
% hold off


