nelem=3;
nnod=7;
ntype=1;
nfunc=2;
ncon=[1,2,3;3,4,5;5,6,7];
x=[0.0;0.1667;0.3333;0.5;0.6667;0.8333;1.0];
nebc=1;
iebc=[7.0];
vebc=[0.0];
nnbc=[6.0];
v=[0.0];
inbc=[1.0;2.0;3.0;4.0;5.0;6.0];
vnbc=[-4.5;0;0;0;0;0];
fc=[0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0];
ac=[4.5,4.5,0.0;4.5,4.5,0;4.5,4.5,0];
cc=[0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0];
% The value of A0 is not importand due to the solution not being
% depdendent on it