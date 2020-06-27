function y = Jacobian_dot(q,q_dot)
y = [ -0.5*( (cos(q(1,1)+q(2,1))*(q_dot(1,1)+q_dot(2,1))) + (cos(q(1,1))*(q_dot(1,1))) ) , -0.5*cos(q(1,1)+q(2,1))*(q_dot(1,1)+q_dot(2,1)),0,0 ; -0.5*( (sin(q(1,1)+q(2,1))*(q_dot(1,1)+q_dot(2,1))) + (sin(q(1,1))*q_dot(1,1)) ),-0.5*sin(q(1,1)+q(2,1))*(q_dot(1,1)+q_dot(2,1)),0,0 ; 0,0,0,0 ; 0,0,0,0 ];
end