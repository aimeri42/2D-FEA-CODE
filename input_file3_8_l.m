nelem=8;
nnod=9;
ntype=1;
nfunc=1;
ncon=[1,2;2,3;3,4;4,5;5,6;6,7;7,8;8,9];
x=[0.0;0.0375;0.075;0.1125;0.15;0.1875;0.225;0.2625;0.3];
nebc=2;
iebc=[1.0;9.0];
vebc=[0.0;0.0];
nnbc=[7.0];
inbc=[2.0;3.0;4.0;5.0;6.0;7.0;8.0];
vnbc=[0.0;0.0;0.0;0.0;0.0;0.0;0.0];
fc=[-0.00002,0.0,0.0;-0.00002,0.0,0.0;-0.00002,0.0,0.0;-0.00002,0.0,0.0;...
    -0.00002,0.0,0.0;-0.00002,0.0,0.0;-0.00002,0.0,0.0;-0.00002,0.0,0.0];
ac=[0.000016,-0.000015,-0.00005;0.000016,-0.000015,-0.00005;...
    0.000016,-0.000015,-0.00005;0.000016,-0.000015,-0.00005;...
    0.000016,-0.000015,-0.00005;0.000016,-0.000015,-0.00005;...
    0.000016,-0.000015,-0.00005;0.000016,-0.000015,-0.00005];
cc=[0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0;...
    0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0];
v=[0.0];
bc=[0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0;...
    0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0];