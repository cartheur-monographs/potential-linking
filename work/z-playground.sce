// June 2015
// Time to play in Scilab
// Let's get a rough draft of potential linking, shall we??

// Here is a simple ODE

function dx=f(t,x)
  dx=sin(2*t);
endfunction

function dx=g(t,x)
    dx(1)= x(2)
    dx(2)= cos(2*t)
endfunction

t0 = 0
x0 = -0.5
t = 0:0.1:5;
x = ode(x0, t0, t, f);
y = ode([0; -1/2], 0, t, g);
plot2d(t,x)
plot2d(t', [y(1,:)' y(2, :)'])

