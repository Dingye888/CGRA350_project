#version 410 core

// uniform data
uniform mat4 uProjectionMatrix;
uniform mat4 uModelViewMatrix;

//patch in float gl_TessLevelOuter[4];
//patch in float gl_TessLevelInner[2];


layout (isolines, equal_spacing) in; // isolines 

vec4 interpolate(float t)
{
	// control points
	vec4 p0 = gl_in[0].gl_Position;
	vec4 p1 = gl_in[1].gl_Position;
	vec4 p2 = gl_in[2].gl_Position;
	vec4 p3 = gl_in[3].gl_Position;

	float b0 = (1-t) * (1-t) * (1-t);
	float b1 = 3 * t * (1-t) * (1-t);
	float b2 = 3 * t * t * (1-t);
	float b3 = t * t * t;
 
	return b0*p0 + b1*p1 + b2*p2 + b3*p3;
}

void main(void)
{
    gl_Position = uProjectionMatrix * uModelViewMatrix * interpolate(gl_TessCoord.x); //mix(p1, p2, gl_TessCoord.y);
}