close all;
clc;

%Testing Exercise%
%A = [-0.1 2;0 -1];
%B = [10;0.1];
%C = [0.2 -1];
%D = 0;

A = [-2 0 0;1 0 1;0 -2 -2];
B = [1;0;1];
C = [1 -1 0];
D = [0];
[y,x,t] = step(A,B,C,D);
figure,plot(t,y),title("Salida del Sistema"),grid;
figure,plot(t,x),title('Variables de Estado'), grid;

T = [1 0 0;0 0.5 0;0 0 1];
T_inv = inv(T);

A = T * A * T_inv;
B = T * B;
C = C * T_inv;

[y,x,t] = step(A,B,C,D);
figure,plot(t,y),title("Salida del Sistema Acotada"),grid;
figure,plot(t,x),title('Variables de Estado - Sistema Acotada'), grid;