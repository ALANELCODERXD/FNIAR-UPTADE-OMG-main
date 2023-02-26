import flixel.graphics.FlxGraphic;
import flixel.system.FlxAssets;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.tweens.FlxTween;
import flixel.FlxSprite;
import flixel.util.FlxTimer;
import flixel.tweens.FlxEase;
import flixel.effects.FlxFlicker;

class LoadingTitle extends FlxState {
    var bg:FlxSprite;
	var canClick:Bool = true;
	override public function create() {
        super.create();

        FlxG.camera.alpha = 1;
        FlxG.mouse.visible = false;
		
        bg = new FlxSprite();
		bg.loadGraphic(Paths.image('warning'));
        bg.updateHitbox();
		bg.screenCenter();
		add(bg);
		bg.alpha = 0;

		FlxTween.tween(bg, {alpha: 1}, 0.4, {
		});
	}

	override function update(elapsed)
	{
		if (FlxG.keys.pressed.ENTER && canClick == true)
			{		
				canClick = false;
				FlxG.sound.play(Paths.sound('cancelMenu'));
				FlxTween.tween(bg, {alpha: 0}, 0.4, {
					ease: FlxEase.quadOut,
					onComplete: function(twn:FlxTween)
					{
						remove(bg);
						FlxG.switchState(new TitleState());
					}
				});
			}
	}


}