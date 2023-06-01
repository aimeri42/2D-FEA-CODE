function [sf,dsfx,dsfy,rj] = shape2d(nfunc,npea,npe,xi,h)

sf = zeros(npe,1);
dsf = zeros(npe,1);
ddsf = zeros(npe,1);
gdsf = zeros(npe,1);
gddsf = zeros(npe,1);
%
if nfunc==1
  %  sf(1) = (1.0-2*x);
    dsfx(1)= -2.0;
    dsfy(2)=0.0;
  %  sf(2) = (2*x-2*y);
    dsfx(2) = 2;
    dsfy(2)=-2;
 %   sf(3)=2*y;
    dsfx(3)=0.0;
    dsfy(3)=2.0;
else
    sf(1) = -(1/2)*xi*(1-xi);
    dsf(1) = (-1/2)+xi;
    sf(2) = 1-xi^2;
    dsf(2) = -2*xi;
    sf(3) = (1/2)*xi*(1+xi);
    dsf(3) = (1/2)+xi;
end

%    Jacobian

rj =h/2;
%	Shape functions derivatives in global coordinates
for i = 1:npea
    gdsf(i) = dsf(i)/rj;
end

end

