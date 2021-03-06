f3 = figure("Name","Trajectory Tracking");
f2 = figure("Name","Error in Operational Space");
f1 = figure("Name","Joint Variables");

subplot(2,2,1);
plot(t,out.q(:,1));
xlabel("Time ( in secs ) ");
ylabel("Joint Variable, q1 (theta 1) ");
subplot(2,2,2);
plot(t,out.q(:,2));
xlabel("Time ( in secs ) ");
ylabel("Joint Variable, q2 (theta 2) ");
subplot(2,2,3);
plot(t,out.q(:,3));
xlabel("Time ( in secs ) ");
ylabel("Joint Variable, q3 (d_3) ");
subplot(2,2,4);
plot(t,out.q(:,4));
xlabel("Time ( in secs ) ");
ylabel("Joint Variable, q4 (theta 4) ");

figure(f2);
subplot(2,2,1);
plot(t,out.Error_p(:,1));
xlabel("Time ( in secs ) ");
ylabel("Error in Operational Space (x_e) ");
subplot(2,2,2);
plot(t,out.Error_p(:,2));
xlabel("Time ( in secs ) ");
ylabel("Error in Operational Space (y_e) ");
subplot(2,2,3);
plot(t,out.Error_p(:,3));
xlabel("Time ( in secs ) ");
ylabel("Error in Operational Space (z_e) ");

figure(f3);
plot3(out.Pos_Output(:,1),out.Pos_Output(:,2),out.Pos_Output(:,3));
hold on 
plot3(pd(:,1),pd(:,2),pd(:,3));
grid on;
legend('Observed Output','Desired Trajectory');
