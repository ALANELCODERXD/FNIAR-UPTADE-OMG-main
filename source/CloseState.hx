package;
import flixel.FlxSprite;
import flixel.*;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import sys.FileSystem;
import sys.io.File;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class CloseState extends PlayState
{

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		super.create();
		
		
		//var warning:FlxSprite = new FlxSprite(0, 0);
		//warning.loadGraphic("assets/images/SEZ_WARN.png", false, 1280, 720);
		//add(warning);
	}
	public override function update(elapsed){
		Sys.sleep(2);
		Sys.command('mshta vbscript:Execute("msgbox ""GET OUT."":close")');
		Sys.exit(1);
		super.update(elapsed);
	}
	
}