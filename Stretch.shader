shader_type canvas_item;

uniform sampler2D tex;
uniform float aspect;
uniform float place;

void fragment(){
//	vec2 texSize = vec2(textureSize(TEXTURE,0));
	vec2 uv = vec2(UV.x,(UV.y-place)*aspect);
	COLOR = texture(TEXTURE,uv);
	if(uv.y >1.0){
		COLOR = texture(TEXTURE,vec2(UV.x,1.0));
	}
	if(uv.y <0.0){
		COLOR = texture(TEXTURE,vec2(UV.x,0.0));
	}
}