import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

renderInWindow displayFunction = do
    (progName,_) <- getArgsAndInitialize
    createWindow progName
    displayCallback $= displayFunction
    mainLoop

displayPoints points primitiveShape = do
    renderAs primitiveShape points
    flush

renderAs figure ps = renderPrimitive figure$makeVertexes ps

makeVertexes = mapM_ (\(x,y,z)->vertex$Vertex3 x y z)

mainFor primitiveShape = renderInWindow (displayMyPoints primitiveShape)

displayMyPoints primitiveShape = do
    clear [ColorBuffer]
    currentColor $= Color4 1 1 0 0
    displayPoints myPoints primitiveShape

myPoints
  = [(0,0.5,0::GLfloat)
    ,(3.5/6,-3.5/6,0)
    ,(-4.3/6,0.9/6,0)
    ,(4.3/6,0.9/6,0)
    ,(-3.5/6,-3.5/6,0)
    ]

main = mainFor LineLoop
      