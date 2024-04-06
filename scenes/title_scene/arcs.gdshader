shader_type canvas_item;

// 定义一个uniform变量用于控制放大倍数
uniform float zoom_factor = 2;
uniform float speed = 1.0;

void fragment() {
    // 根据zoom_factor调整UV坐标
    vec2 uv = (UV - vec2(0.5, 0.5)) / zoom_factor + vec2(0.5, 0.5);
	uv.y += TIME * speed;
    // 从调整后的UV坐标采样纹理
    COLOR = texture(TEXTURE, uv);
}
