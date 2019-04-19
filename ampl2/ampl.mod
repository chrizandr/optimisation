var A, >=0;
var B, >=0;

minimize Z: 10*A + 7.5*B; 

subject to c1:
	4*A + 2*B >= 10;
subject to c2:
	-3*A + 2*B <= 3;
subject to c3:
	A + B <=3;
