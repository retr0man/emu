// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord;
};
out_vertex _ret_0;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord = TexCoord.xy;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color2;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color2;
    vec2 _texCoord;
};
vec4 _ret_0;
vec3 _TMP41;
vec3 _TMP23;
float _TMP22;
vec3 _TMP40;
vec3 _TMP39;
vec3 _TMP20;
float _TMP19;
vec3 _TMP38;
vec3 _TMP37;
float _TMP42;
float _TMP17;
float _TMP16;
vec4 _TMP15;
out_vertex _TMP43;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
vec2 _c0062;
vec2 _c0066;
vec2 _c0068;
vec2 _c0070;
vec2 _c0072;
vec2 _c0074;
vec2 _c0076;
vec2 _c0078;
vec2 _c0080;
float _TMP81;
float _TMP85;
float _TMP89;
float _TMP93;
float _TMP97;
float _TMP101;
float _TMP105;
float _TMP109;
float _TMP113;
float _TMP121;
float _TMP129;
float _TMP137;
float _TMP147;
float _a0150;
float _TMP151;
float _a0154;
float _TMP155;
float _a0158;
float _TMP159;
float _a0162;
float _TMP183;
float _a0186;
float _TMP187;
float _a0190;
float _TMP201;
float _a0204;
float _TMP205;
float _a0208;
float _TMP209;
float _a0212;
float _TMP213;
float _a0216;
float _TMP237;
float _a0240;
float _TMP241;
float _a0244;
float _x0256;
float _TMP257;
vec3 _r0264;
vec3 _r0266;
vec3 _TMP269;
vec3 _a0280;
vec3 _b0280;
vec3 _TMP281;
vec3 _a0292;
vec3 _b0292;
vec3 _TMP293;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _g1;
    vec2 _g2;
    float _d_edge;
    float _edge_strength;
    vec3 _color1;
    vec3 _min_sample;
    vec3 _max_sample;
    _g1 = vec2(1.00000000E+00/TextureSize.x, 0.00000000E+00);
    _g2 = vec2(0.00000000E+00, 1.00000000E+00/TextureSize.y);
    _TMP43._texCoord = TEX0.xy - 1.00000000E+00/TextureSize;
    _c0050 = (_TMP43._texCoord - _g1) - _g2;
    _TMP0 = COMPAT_TEXTURE(Texture, _c0050);
    _c0052 = (_TMP43._texCoord + 2.00000000E+00*_g1) - _g2;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0052);
    _c0054 = (_TMP43._texCoord - _g1) + 2.00000000E+00*_g2;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0054);
    _c0056 = _TMP43._texCoord + 2.00000000E+00*_g1 + 2.00000000E+00*_g2;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0056);
    _c0058 = _TMP43._texCoord - _g2;
    _TMP4 = COMPAT_TEXTURE(Texture, _c0058);
    _c0060 = (_TMP43._texCoord + _g1) - _g2;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0060);
    _c0062 = _TMP43._texCoord - _g1;
    _TMP6 = COMPAT_TEXTURE(Texture, _c0062);
    _TMP7 = COMPAT_TEXTURE(Texture, _TMP43._texCoord);
    _c0066 = _TMP43._texCoord + _g1;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0066);
    _c0068 = (_TMP43._texCoord - _g1) + _g2;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0068);
    _c0070 = _TMP43._texCoord + _g2;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0070);
    _c0072 = _TMP43._texCoord + _g1 + _g2;
    _TMP11 = COMPAT_TEXTURE(Texture, _c0072);
    _c0074 = _TMP43._texCoord + 2.00000000E+00*_g1;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0074);
    _c0076 = _TMP43._texCoord + _g2 + 2.00000000E+00*_g1;
    _TMP13 = COMPAT_TEXTURE(Texture, _c0076);
    _c0078 = _TMP43._texCoord + 2.00000000E+00*_g2;
    _TMP14 = COMPAT_TEXTURE(Texture, _c0078);
    _c0080 = _TMP43._texCoord + 2.00000000E+00*_g2 + _g1;
    _TMP15 = COMPAT_TEXTURE(Texture, _c0080);
    _TMP81 = dot(_TMP4.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP85 = dot(_TMP5.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP89 = dot(_TMP6.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP93 = dot(_TMP7.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP97 = dot(_TMP8.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP101 = dot(_TMP9.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP105 = dot(_TMP10.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP109 = dot(_TMP11.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP113 = dot(_TMP13.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP121 = dot(_TMP15.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP129 = dot(_TMP14.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP137 = dot(_TMP12.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _a0150 = _TMP93 - _TMP85;
    _TMP147 = abs(_a0150);
    _a0154 = _TMP93 - _TMP101;
    _TMP151 = abs(_a0154);
    _a0158 = _TMP109 - _TMP129;
    _TMP155 = abs(_a0158);
    _a0162 = _TMP109 - _TMP137;
    _TMP159 = abs(_a0162);
    _a0186 = _TMP101 - _TMP85;
    _TMP183 = abs(_a0186);
    _a0190 = _TMP129 - _TMP137;
    _TMP187 = abs(_a0190);
    _TMP16 = _TMP147 + _TMP151 + _TMP155 + _TMP159 + -(_TMP183 + _TMP187);
    _a0204 = _TMP97 - _TMP113;
    _TMP201 = abs(_a0204);
    _a0208 = _TMP97 - _TMP81;
    _TMP205 = abs(_a0208);
    _a0212 = _TMP105 - _TMP89;
    _TMP209 = abs(_a0212);
    _a0216 = _TMP105 - _TMP121;
    _TMP213 = abs(_a0216);
    _a0240 = _TMP81 - _TMP113;
    _TMP237 = abs(_a0240);
    _a0244 = _TMP89 - _TMP121;
    _TMP241 = abs(_a0244);
    _TMP17 = _TMP201 + _TMP205 + _TMP209 + _TMP213 + -(_TMP237 + _TMP241);
    _d_edge = _TMP16 - _TMP17;
    _x0256 = (_d_edge - -9.99999997E-07)/1.99999999E-06;
    _TMP42 = min(1.00000000E+00, _x0256);
    _TMP257 = max(0.00000000E+00, _TMP42);
    _edge_strength = _TMP257*_TMP257*(3.00000000E+00 - 2.00000000E+00*_TMP257);
    _r0264 = 5.00000000E-01*_TMP10.xyz;
    _r0264 = _r0264 + 5.00000000E-01*_TMP8.xyz;
    _r0266 = 5.00000000E-01*_TMP7.xyz;
    _r0266 = _r0266 + 5.00000000E-01*_TMP11.xyz;
    _color1 = _r0264 + _edge_strength*(_r0266 - _r0264);
    _TMP37 = min(_TMP10.xyz, _TMP11.xyz);
    _TMP38 = min(_TMP8.xyz, _TMP37);
    _TMP269 = min(_TMP7.xyz, _TMP38);
    _TMP19 = float((_d_edge >= 0.00000000E+00));
    _a0280 = (_TMP2.xyz - _TMP10.xyz)*(_TMP8.xyz - _TMP1.xyz);
    _b0280 = (_TMP0.xyz - _TMP7.xyz)*(_TMP11.xyz - _TMP3.xyz);
    _TMP20 = _a0280 + _TMP19*(_b0280 - _a0280);
    _min_sample = _TMP269 + _TMP20;
    _TMP39 = max(_TMP10.xyz, _TMP11.xyz);
    _TMP40 = max(_TMP8.xyz, _TMP39);
    _TMP281 = max(_TMP7.xyz, _TMP40);
    _TMP22 = float((_d_edge >= 0.00000000E+00));
    _a0292 = (_TMP2.xyz - _TMP10.xyz)*(_TMP8.xyz - _TMP1.xyz);
    _b0292 = (_TMP0.xyz - _TMP7.xyz)*(_TMP11.xyz - _TMP3.xyz);
    _TMP23 = _a0292 + _TMP22*(_b0292 - _a0292);
    _max_sample = _TMP281 - _TMP23;
    _TMP41 = min(_max_sample, _color1);
    _TMP293 = max(_min_sample, _TMP41);
    _ret_0 = vec4(_TMP293.x, _TMP293.y, _TMP293.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
