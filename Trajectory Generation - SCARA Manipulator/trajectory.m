function [T,Pd,Pd_dot,Pd_dot_dot] = trajectory()

Tc = 0.001;

q_dot_dot = [0;0;0];
q_dot = [0;0;0];
q = [0;-0.8;0];

T = zeros(4001,1);
Pd = zeros(4001,3);
Pd_dot = zeros(4001,3);
Pd_dot_dot = zeros(4001,3);

for i = 1:4001
    
    t = (i-1)*Tc;
    T(i,1) = t;
    
    q = q + (q_dot + (q_dot_dot*Tc/2))*Tc;
    q_dot = q_dot + q_dot_dot*Tc;
    
    Pd(i,:) = q;
    Pd_dot(i,:) = q_dot;
    
    q_dot_dot = [0;0;0];
    
    if ((t >= 0)&&(t < 0.2))
    q_dot_dot = [ 0;0;6.25 ];
    end

    if ((t >= 0.4)&&(t < 0.6))
    q_dot_dot = [ 0;0;-6.25 ];
    end

    if ((t >= 0.4)&&(t < 1))
    q_dot_dot = q_dot_dot + [2.5/3;1/3;0];
    end

    if ((t >= 1.4)&&(t < 2))
    q_dot_dot = [-2.5/3;-1/3;0];
    end

    if ((t >= 1.8)&&(t < 2.4))
    q_dot_dot = q_dot_dot + [0.5;1;0];
    end

    if ((t >= 2.8)&&(t < 3.4))
    q_dot_dot = [-0.5;-1;0];
    end

    if ((t >= 3.2)&&(t < 3.5))
    q_dot_dot = q_dot_dot + [0;0;-10/3];
    end

    if ((t >= 3.7)&&(t < 4))
    q_dot_dot = [0;0;10/3];
    end
    
    Pd_dot_dot(i,:) = q_dot_dot;
end

end