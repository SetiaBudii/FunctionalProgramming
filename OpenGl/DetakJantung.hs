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
    currentColor $= Color4 0 1 0 1
    displayPoints myPoints primitiveShape

myPoints
  = [(-0.8,0,0::GLfloat)  ---Detak Jantung ke-1
    ,(-0.7,0,0)
    ,(-0.68,0.1,0)
    ,(-0.64,-0.2,0)
    ,(-0.53,0.4,0)
    ,(-0.4,-0.41,0)
    ,(-0.38,0,0)
    ,(-0.3,0,0)
    ,(-0.26,0.2,0)
    ,(-0.23,0,0)
    ,(-0.2,0,0)

    ---Detak Jantung ke-2
    ,(-0.8+0.8,0,0)
    ,(-0.7+0.8,0,0)
    ,(-0.68+0.8,0.1,0)
    ,(-0.64+0.8,-0.2,0)
    ,(-0.53+0.8,0.4,0)
    ,(-0.4+0.8,-0.41,0)
    ,(-0.38+0.8,0,0)
    ,(-0.3+0.8,0,0)
    ,(-0.26+0.8,0.2,0)
    ,(-0.23+0.8,0,0)
    ,(-0.2+0.8,0,0)
    ,(-0.1+0.8,0,0)
    ]

main = mainFor LineStrip 
{--menghubungkan antar point (membuat line) dengan cara menghubungkan titik ke titik secara countinue (melanjutkan
   dari titik sebelumnya)--}
      