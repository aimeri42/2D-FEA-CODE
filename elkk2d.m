function [el_k,el_f] = elkk2d(ntype,npe,fc,el_x,nfunc,v)
 
% Gauss points array
gauss = [0.0,-1/sqrt(3),-sqrt(3/5),-0.86113631;0.0,1/sqrt(3),0.0,...
    -0.33998104;0.0,0.0,sqrt(3/5),0.33998104;0.0,0.0,0.0,0.86113631];
% Gauss weights array

weight = [2.0,1.0,5/9,0.34785485;0.0,1.0,8/9,0.65214515;...
    0.0,0.0,5/9,0.65214515;0.0,0.0,0.0,0.34785485];

if ntype==2
    ngp=4;
% npea gives the size of the of element matrix   
    npea = 4;
else
    ngp=npe;
    npea=npe;
end

h = el_x(npe)-el_x(1);
el_f = zeros(npea,1);
el_k = zeros(npea,npea);

for ng =1:ngp
    xi = gauss(ng,ngp); 
    
    [sf,dsfx,dsfy,rj]=shape2d(nfunc,npea,npe,xi,h);
    
  %x = el_x(1)+(h/2)*(1+xi);                 % h/2=rj
   % ax = ac(ng,1)+ac(ng,2)*x+ac(ng,3)*x*x;
   % cx = cc(ng,1)+cc(ng,2)*x+cc(ng,3)*x*x;
    %fx = fc(ng,1)+fc(ng,2)*x+fc(ng,3)*x*x;
    
  %  bx = bc(ng,1)+bc(ng,2)*x+fc(ng,3)*x*x;
%     ex = ex + sf(ng)*ex(ng);
%
    for i=1:npea
        el_f(i) = 1/24;
    end
    
    if ntype==1
        for i=1:npea
            for j=1:npea
                el_k(i,j) =((dsfx(i)*dsfx(j)+dsfy(i)*dsfy(j))*1/8);
            end
        end
    end
end
    

end


