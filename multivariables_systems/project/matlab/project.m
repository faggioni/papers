clear all;
close all;
clc;

%RGA

g11 = tf([0.00025 0.025],[0.00075 0.065 1]);
g12 = tf([0.001],[0.0002 0.03 1]);
g21 = tf([0.00025 0.025],[0.00075 0.065 1]);
g22= tf([0.025],[0.0002 0.03 1]);

k = [dcgain(g11) dcgain(g12);dcgain(g21) dcgain(g22)];
lamda = rga(k);

%STATE SPACE
%COLUMN #1
d1 = [0.00075 0.065 1];
n11=[0.00025 0.025];
n12=[0.00025 0.0025];
[A1,B1,C1,D1] = tf2ss([n11;n12],d1);

%COLUMN #2
d2=[0.0002 0.03 1];
n21=[0.001];
n22=[0.025];
[A2,B2,C2,D2] = tf2ss([n21;n22],d2);

%STATE SPACE SYSTEM
A = [A1 zeros(2,2);zeros(2,2) A2];
B = [B1 zeros(2,1);zeros(2,1) B2]   ;
C = [C1 C2];
D = [D1 D2];

%CENTRALIZED DESING
polesobserver = [-1,-1, -1.5,-1.5];
polescontroller = [-4, -4, -15,-15];
L = place(A',C', polesobserver)';
K = place(A,B,polescontroller);




