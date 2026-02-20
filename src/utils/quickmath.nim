import vmath

proc toVec3* (value: array[3, float]): Vec3 =
  return vec3(value[0], value[1], value[2])
