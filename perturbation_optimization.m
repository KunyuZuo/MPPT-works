function D  = perturbation(Param, Enabled, V, I)


Dinit = Param(1);  
Dmax = Param(2);   
Dmin = Param(3);   
deltaD = Param(4); 

persistent Vold Pold Dold;

dataType = 'double';

if isempty(Vold)
    Vold=0;
    Pold=0;
    Dold=Dinit;
end
P= V*I;
dV= V - Vold;
dP= P - Pold;

if dP ~= 0 & Enabled ~=0
    if dP < 0
        if dV < 0
            D = Dold + deltaD;
        else
            D = Dold - deltaD;
        end
    else
        if dV < 0
            D = Dold - deltaD;
        else
            D = Dold + deltaD;
        end    
    end
else D=Dold;
end

if D >= Dmax | D<= Dmin
    D=Dold;
end

Dold=D;
Vold=V;
Pold=P;


