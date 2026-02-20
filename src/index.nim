import config
import os
import vmath
import projection
import utils/quickmath

let args = commandLineParams()

if args.len <= 0:
  echo "Please specify config file in args."
  quit(0)

let conf: UserConfig = parseConfig(args[0])

let eye: Vec3 = conf.view_origin.toVec3()
let center: Vec3 = conf.look_at.toVec3()
let up: Vec3 = vec3(0,0,1)

echo toAngles(eye, center).fromAngles()
echo project_perspective(vec3(2,3,4))





