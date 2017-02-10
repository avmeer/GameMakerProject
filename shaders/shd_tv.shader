//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time;

void main(){
    vec3 derpy;
    vec2 uv = v_vTexcoord.xy * 0.986;
    derpy.x = texture2D(gm_BaseTexture, vec2(uv.x + 0.0003, uv.y)).x;
    derpy.y = texture2D(gm_BaseTexture, vec2(uv.x + 0.0003, uv.y)).y;
    derpy.z = texture2D(gm_BaseTexture, vec2(uv.x - 0.0003, uv.y)).z;
    
    derpy = clamp(derpy * 0.5 + 0.6 * derpy * derpy, 0.0, 1.0);
    derpy *= 0.6 + 6.4 * uv.x * uv.y * (1.0 - uv.x) * (1.0 - uv.y); // Vignetting
    
    //col *= vec3(0.9, 1.0, 0.7); // "TV Color"
    derpy *= vec3(0.9, 1.0, 0.9); // "TV Color"
    
    // Scanlines
    derpy *= 0.8 + 0.2 * sin(10.0 * time + uv.y * 768.0); 
    
    // Similar results to old rand() function, but more efficient.
    derpy *= 1.0 - 0.07 * fract(tan(time * 100.0));
    //gl_FragColor = vec4(derpy, 1.0);
}
