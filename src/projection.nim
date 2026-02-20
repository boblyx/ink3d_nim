import vmath
import math

let O = vec3(0,0,0) 

proc project_perspective* (p: Vec3): Vec2 =
  var z: float = -p.z
  if (z < 0.0001): 
    z = 0.0001
  return vec2(p.x/z, p.y/z)
