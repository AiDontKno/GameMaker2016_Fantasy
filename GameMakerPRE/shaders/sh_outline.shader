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

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float Hpix;
uniform float Wpix;

void main(){
    vec2 offsety;
        offsety.x = Hpix;
    vec2 offsetx;
        offsetx.y = Wpix;
    float alpha = texture2D(gm_BaseTexture,v_vTexcoord).a;
    
    alpha = max(alpha,texture2D(gm_BaseTexture,v_vTexcoord-offsetx).a);
    alpha = max(alpha,texture2D(gm_BaseTexture,v_vTexcoord-offsety).a);
    alpha = max(alpha,texture2D(gm_BaseTexture,v_vTexcoord+offsetx).a);
    alpha = max(alpha,texture2D(gm_BaseTexture,v_vTexcoord+offsety).a);
    
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor.a = alpha;
}

