clc, clearvars



b = [-4 8];
a = [1 6 8];
[r,p,k] = residue(b,a)

[b,a] = residue(r,p,k)

%%%
% b = [2 1 0 0];
% a = [1 0 1 1];
% [r,p,k] = residue(b,a)

%%%
% b = [2 0 0 1 0];
% a = [1 0 1];
% [r,p,k] = residue(b,a)