
When run, this mod creates two transparent squares in the top-left corner of the screen.  A red 
one (GUIScript1), and a blue one (GUIScript2).  The blue square is present at all times.  The red 
square is only present when the player is a marine.  Both squares will be hidden whenever the help 
screen is being displayed, but both implement this functionality differently.

The red square -- like many scripts built into ns2 -- is managed by ClientUI, which automatically creates/destroys the script based on which team and class the player is on.

The blue square (GUIScript2) is managed by the Player class.

See the code comments for implmentation instructions.