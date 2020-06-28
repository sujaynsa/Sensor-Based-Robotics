function y = dynamic_model(q_dot,q,u)

y = inv(B(q))*(u - n(q,q_dot));

end