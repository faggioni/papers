clear all;
close all;
clc;

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
alpha = 0.90;
AA = [A zeros(4,2);-C zeros(2,2)];
BB = [B ; zeros(2,2)];
%C = [C1 C2 zeros(2,2)];
%D = [D1 D2];
AA = AA + alpha*eye(6);

Q = eye(4);
R = eye(2);

QQ = eye(6);
RR = eye(2);
%CENTRALIZED DESING
polesobserver = [-4, -4, -30, -30];
L = place(A',C', polesobserver)';
[K,S,E] = lqr(A,B,Q,R);
[KK,SS,EE] = lqr(AA,BB,QQ,RR);
    



