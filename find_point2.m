function [ arm ] = find_point2( x,y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

syms a b;
eq1=[x;y;0;1]==[cos(a) sin(a) 0 0;-sin(a) cos(a) 0 0;0 0 1 0;0 0 0 1]*[cos(b) sin(b) 0 0;-sin(b) cos(b) 0 0;0 0 1 0;0 0 0 1]*[0;0;0;1];
answ=solve(eq1,a>0,a<=pi/2,a,b);
m=answ.a;
arm=[10*cos(m);10*sin(m)];

end

