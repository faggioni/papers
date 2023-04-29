clear all;
close all;
clc;

% Testing
A = [-1 0;0 -2];
B = [1;1];
C = [1 0];
D = 0;

T = 0.1;
[Ad, Bd] = c2d(A, B, T);

T1 = 1;
T2 = 0.1;
T3 = 0.01;
initvalues = [1;2];
%time = 10; %segs
%Problem Data
Ap = [0 -1;1 -2];
Bp = [0;1];
[A1d, B1d] = c2d(Ap, Bp, T1);
[A2d, B2d] = c2d(Ap, Bp, T2);
[A3d, B3d] = c2d(Ap, Bp, T3);

%Display Matrixes
%disp('T = 1');
%disp(A1d);
%disp(B1d);

%disp('T = 0.1');
%disp(A2d);
%disp(B2d);

%disp('T = 0.01');
%disp(A3d);
%disp(B3d);

%u1 = ones(1, time * (1/T1));
%Plot T1
%prd(A1d, B1d, T1, u1, time, initvalues)


sis1 = ss(A,B,C,D,T3);
figure, step(sis1),xlim([0,10]);

%sis2 = ss(A,B,C,D,T2);
%figure, step(sis2);