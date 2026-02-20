import json

type 
  ProjectionType* = enum
    perspective, orthographic

  UserConfig* = object
    input_path* : string = ""
    output_path* : string = ""
    view_origin* : array[3, float] = [1,1,1]
    look_at* : array[3,float] = [0,0,0]
    projection* : ProjectionType = ProjectionType.perspective
    samples* : int = 108
    refine_steps* : int = 108

proc parseConfig* (fp: string): UserConfig = 
  let content: string = readFile(fp)
  let raw = parseJson(content)

  let config = to(raw, UserConfig)

  return config
  



  
  
