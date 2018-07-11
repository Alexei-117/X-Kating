#version 450 core

layout(location = 0) in vec4 vertexPosition;
layout(location = 1) in vec3 vertexNormal;
layout(location = 2) in vec2 UV;

uniform mat4 ModelMatrix;
uniform mat4 ViewMatrix;
uniform mat4 ProjectionMatrix;

<<<<<<< HEAD
=======
mat4 modelViewMatrix;

>>>>>>> 9417c0d1639e6067b4e72d4c551e3d94986b82ce
varying vec4 v_Color;
varying vec2 UV_Coordinates;

const int maxLights = 5;
uniform int numLights;

struct Light {
   vec4 position;
   vec4 intensity;
};
uniform Light light[maxLights];

struct Material {
<<<<<<< HEAD
    vec4 kd;
    vec4 ka;
    vec4 ks;
=======
    vec3 kd;
    vec3 ka;
    vec3 ks;
    float ns;
>>>>>>> 9417c0d1639e6067b4e72d4c551e3d94986b82ce
};
uniform Material material;


void main()
{
<<<<<<< HEAD

=======
>>>>>>> 9417c0d1639e6067b4e72d4c551e3d94986b82ce
    float ambient = 0.6;                               

    v_Color = vec4(0.0, 0.0, 0.0, 1.0);

<<<<<<< HEAD
    vec3 P = vec3(ViewMatrix * ModelMatrix * vertexPosition);	          // Posición del vértice
	vec3 N = vec3(ViewMatrix * ModelMatrix * vec4(vertexNormal, 0.0));    // Normal del vértice
=======
    modelViewMatrix = ViewMatrix * ModelMatrix;

    vec3 P = vec3(modelViewMatrix * vertexPosition);	          // Posición del vértice
	vec3 N = vec3(modelViewMatrix * vec4(vertexNormal, 0.0));    // Normal del vértice

    vec4 P2 = vec4(P.x, P.y, P.z, 1.0);
    vec4 posactual = {modelViewMatrix[3][0], modelViewMatrix[3][1], modelViewMatrix[3][2], modelViewMatrix[3][0]};
    vec3 V = normalize(vec3(modelViewMatrix * posactual * (vec4(0.0, 0.0, 0.0, 1.0) - P2)));
>>>>>>> 9417c0d1639e6067b4e72d4c551e3d94986b82ce

    for(int i = 0; i < numLights && i < maxLights; i++){

        float diffuse = 0.0;

        vec4 LightPos = ViewMatrix * light[i].position;

	    float d = length(LightPos.xyz - P);			        // distancia de la luz
	    vec3  L = normalize(LightPos.xyz - P);			    // Vector Luz

        diffuse = max(dot(N, L), 0.0);		            // Cálculo de la int. difusa
        // Cálculo de la atenuación
        float attenuation = 80.0/(0.25+(0.1*d)+(0.03*d*d));
        diffuse = diffuse * attenuation;
<<<<<<< HEAD

        v_Color += vec4(light[i].intensity * diffuse) * material.kd;

    }

    v_Color += vec4(1.0, 1.0, 1.0, 1.0) * (ambient) * material.ka;
=======
        
        v_Color += vec4(light[i].intensity * diffuse) * vec4(material.kd, 1.0);

    }

    v_Color += vec4(1.0, 1.0, 1.0, 1.0) * (ambient) * vec4(material.ka, 1.0);

>>>>>>> 9417c0d1639e6067b4e72d4c551e3d94986b82ce

    gl_Position = ProjectionMatrix * ViewMatrix * ModelMatrix * vertexPosition;

    UV_Coordinates = UV;

}