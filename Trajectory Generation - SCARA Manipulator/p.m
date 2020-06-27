clear all;

[t,pd,pd_dot,pd_dot_dot] = trajectory();

f4 = figure("Name","3D Position Trajectory");
f3 = figure("Name","Z - pos,vel,acc Trajectory");
f2 = figure("Name","Y - pos,vel,acc Trajectory");
f1 = figure("Name","X - pos,vel,acc Trajectory");

subplot(3,1,1);
plot(t,pd(:,1));
xlabel("Time ( in secs ) ");
ylabel("Position in X");
subplot(3,1,2);
plot(t,pd_dot(:,1));
xlabel("Time ( in secs ) ");
ylabel("Velocity in X");
subplot(3,1,3);
plot(t,pd_dot_dot(:,1));
xlabel("Time ( in secs ) ");
ylabel("Acceleration in X");

figure(f2);
subplot(3,1,1);
plot(t,pd(:,2));
xlabel("Time ( in secs ) ");
ylabel("Position in Y");
subplot(3,1,2);
plot(t,pd_dot(:,2));
xlabel("Time ( in secs ) ");
ylabel("Velocity in Y");
subplot(3,1,3);
plot(t,pd_dot_dot(:,2));
xlabel("Time ( in secs ) ");
ylabel("Acceleration in Y");

figure(f3);
subplot(3,1,1);
plot(t,pd(:,3));
xlabel("Time ( in secs ) ");
ylabel("Position in Z");
subplot(3,1,2);
plot(t,pd_dot(:,3));
xlabel("Time ( in secs ) ");
ylabel("Velocity in Z");
subplot(3,1,3);
plot(t,pd_dot_dot(:,3));
xlabel("Time ( in secs ) ");
ylabel("Acceleration in Z");

figure(f4);
plot3(pd(:,1),pd(:,2),pd(:,3));
xlabel("x");
ylabel("y");
zlabel("z");
grid on;