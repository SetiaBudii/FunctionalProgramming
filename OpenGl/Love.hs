import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

renderInWindow displayFunction = do
    (progName,_) <- getArgsAndInitialize
    createWindow progName
    windowSize $= Size 1100 600
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
    currentColor $= Color4 1 0 0 0
    displayPoints myPoints primitiveShape

myPoints
  = [(0/9,4.8/9,0::GLfloat)  
    ,(1/9,6/9,0)
    ,(2/9,6.2/9,0)
    ,(3/9,6.4/9,0)
    ,(4/9,6.2/9,0)
    ,(5/9,6/9,0)
    ,(6/9,4.8/9,0)
    ,(6.8/9,4/9,0)
    ,(6.9/9,3/9,0)
    ,(7/9,2.5/9,0)
    ,(6.8/9,1/9,0)
    ,(6/9,0,0)
    ,(0,-6/9,0)
    ,(-0/9,4.8/9,0)  
    ,(-1/9,6/9,0)
    ,(-2/9,6.2/9,0)
    ,(-3/9,6.4/9,0)
    ,(-4/9,6.2/9,0)
    ,(-5/9,6/9,0)
    ,(-6/9,4.8/9,0)
    ,(-6.8/9,4/9,0)
    ,(-6.9/9,3/9,0)
    ,(-7/9,2.5/9,0)
    ,(-6.8/9,1/9,0)
    ,(-6/9,0,0)
    ,(0,-6/9,0)
    ]

main = mainFor Polygon

      