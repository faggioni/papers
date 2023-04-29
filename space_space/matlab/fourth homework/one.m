clear all;
close all;
clc;


%A
A1 = [0 1 0;0 0 1;-1 -3 -3];
B1 = [1;0;0];
C1 = [1 2 1];
ct1 = ctrb(A1,B1);
obs1 = obsv(A1,C1);

%B
A2 = [0 1 0;0 0 1;0 2 -1];
B2 = [0 1;1 0;0 0];
C2 = [1 0 1];
ct2 = ctrb(A2,B2);
obs2 = obsv(A2,C2);