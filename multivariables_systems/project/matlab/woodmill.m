clear all;
close all;
clc;

%Decomposition on State Space
%Column # 1
d1 = [0.00075 0.065 1];
n11 = [0.00025 0.025];
n21 = [0.00025 0.025];

%Space State Representation SIMO
[A1,B1,C1,D1] = tf2ss([n11;n21], d1);

d2=[0.0002 0.03 1];
n12=[0.001];
n22=[0.025];
[A2,B2,C2,D2] = tf2ss([n12;n22], d2);
