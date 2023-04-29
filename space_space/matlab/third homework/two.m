clear all;
close all;
clc;


n1 = [0 2;1 -2];
d1 = [1 1];

[A1, B1, C1, D1] = tf2ss(n1,d1);

n2 = [0 1 -3;1 1 0];
d2 = [1 3 2];
[A2,B2,C2,D2] = tf2ss(n2,d2);