n=12;
h=1.0/n;

Point(1) = { 0.0, 0.0, 0.0, h};
Point(2) = {+0.5, 0.0, 0.0, h};
Point(3) = {+0.5, 1.0, 0.0, h};
Point(4) = {-0.5, 1.0, 0.0, h};
Point(5) = {-0.5, 0.0, 0.0, h};

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Line(5) = {5,1};

Line Loop(1) = {1,2,3,4,5};
Plane Surface(1) = {1};

Physical Line(1) = {5}; // bottom left
Physical Line(2) = {1}; // bottom right
Physical Line(3) = {2,3,4}; // all other sides
Physical Surface(4) = {1};
