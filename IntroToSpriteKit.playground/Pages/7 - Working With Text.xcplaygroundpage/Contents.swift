/*:
 ## Working With Text
 
 Immediately below is code that sets up the "hill" scene again.
 
 Read past this section of code to learn how to add text nodes into a scene.
 */

// Required frameworks
import PlaygroundSupport    // Allows playground to show live view
import SpriteKit            // Provides 2D graphics classes

// Define the animation size and scene
let frame = CGRect(x: 0, y: 0, width: 725, height: 320)
var scene = SKScene(size: frame.size)

// Define, configure, and present the scene
let view = SKView(frame: frame)
view.showsNodeCount = true
view.showsPhysics = true        // Show outlines of physics bodies
view.presentScene(scene)

// Show the view in the live view area
PlaygroundSupport.PlaygroundPage.current.liveView = view

// Create and position the hill
let hill = SKSpriteNode(imageNamed: "hill")
hill.position = CGPoint(x: hill.size.width / 2, y: hill.size.height / 2)
scene.addChild(hill)

// Add a physics body for the hill
hill.physicsBody = SKPhysicsBody(texture: hill.texture!,
                                 alphaThreshold: 0.5,
                                 size: hill.size)
hill.physicsBody?.isDynamic = false // Hill will not move (not impacted by physics)

// Make an edge loop at the boundaries of the scene
scene.physicsBody = SKPhysicsBody(edgeLoopFrom: scene.frame)

/*:
 
 ### Adding Text Nodes
 
 A piece of text is like any other node in a SpriteKit scene, just created from the `SKLabelNode` class.
 
 - Experiment:
     Uncomment the blocks of code below, one block at a time. Run the playground after uncommenting each block.
 
 - Note:
 You may wish to set the Live View area to present at the bottom of the Xcode window, since this playground creates a fairly wide SpriteKit scene:
 
 ![live-view-at-bottom](live-view-at-bottom.png)
  
 Remember that you can select a block of code by positioning your cursor at the left edge of the first line, then hold down the **Shift** key, then press the **↓** key.
  
 Once you have selected the block of code, press the **Command** and / keys at the same time to toggle the comments off all at once.

 */

// Create a label node (must reference a font installed on the system)
let title = SKLabelNode(fontNamed: "Helvetica Neue Light")
title.fontSize = 24
title.fontColor = .orange
title.zPosition = 10        // Make sure text appears in front of other nodes
title.text = "Letter Slide"
title.position = CGPoint(x: scene.size.width - 100, y: scene.size.height - 50)
scene.addChild(title)

// Create a letter that will fall down the slide
let letter = SKLabelNode(fontNamed: "Rockwell")
letter.fontSize = 36
letter.fontColor = .white
letter.text = "T"
letter.position = CGPoint(x: 56, y: scene.size.height - 50)
// Physics body is just slightly above the baseline of the text
letter.physicsBody = SKPhysicsBody(circleOfRadius: 15,
                                   center: CGPoint(x: 0, y: 10))
// Add the letter to the scene
scene.addChild(letter)

/*:
 
 The title, *Letter Slide* is created and added to the scene, but has no physics body. So it does not move nor is it affected by interactions with any other nodes.
 
 The capital letter T is created, given a circular physics body, and so it falls and interacts with the hill.
 
 ### Exercise
 
 1. Create several individual text nodes, with [rectangular physics bodies](https://developer.apple.com/documentation/spritekit/skphysicsbody/1520295-init). Line up the letters at the bottom of the hill so they look something like what is pictured below (the word and font you choose may vary). Create an animation where the letter T rolls down the hill and bumps all the other letters away.
 
 ![letter-slide](letter-slide.png)
 
 *With apologies to any New York Yankees fans in our class.*
 
 */

// Exercise: Write your code below.
// Create a the letter H that will sit at the bottom of the slide
let H = SKLabelNode(fontNamed: "Brush Script MT")
H.fontSize = 60
H.fontColor = .white
H.text = "H"
H.position = CGPoint(x: 445, y: 5)
//H.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
H.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 40), center: CGPoint(x: 0, y: 20))

//add the H to the scene
scene.addChild(H)

//Create a the letter 'e' that will sit at the bottom of the slide
let e = SKLabelNode(fontNamed: "Brush Script MT")
e.fontSize = 72
e.fontColor = .white
e.text = "e"
e.position = CGPoint(x: 475, y: 5)
e.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 25, height: 30), center: CGPoint(x: 0, y: 15))


//add the e to the scene
scene.addChild(e)

//Create a the letter 'l' that will sit at the bottom of the slide
let l = SKLabelNode(fontNamed: "Brush Script MT")
l.fontSize = 72
l.fontColor = .white
l.text = "l"
l.position = CGPoint(x: 480, y: 5)
l.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 25, height: 40), center: CGPoint(x: 0, y: 20))


//add the l to the scene
scene.addChild(l)

//Create another 'l' that will sit at the bottom of the slide
let l2 = SKLabelNode(fontNamed: "Brush Script MT")
l2.fontSize = 72
l2.fontColor = .white
l2.text = "l"
l2.position = CGPoint(x: 485, y: 5)
l2.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 25, height: 40), center: CGPoint(x: 0, y: 20))

//add the l to the scene
scene.addChild(l2)

//Create a the letter 'o' that will sit at the bottom of the slide
let o = SKLabelNode(fontNamed: "Brush Script MT")
o.fontSize = 72
o.fontColor = .white
o.text = "o"
o.position = CGPoint(x: 490, y: 5)
o.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 25, height: 30), center: CGPoint(x: 0, y: 15))


//add the e to the scene
scene.addChild(o)
/*:

 [Previous: Adding Nodes Repeatedly](@previous) | Page 7 | [Next: Animating a Sprite](@next)
 
 
 */
