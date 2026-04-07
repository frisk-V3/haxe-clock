import js.Browser;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;

class Main {
    static function main() {
        var canvas:CanvasElement = cast Browser.document.getElementById("clock");
        var ctx:CanvasRenderingContext2D = canvas.getContext2d();

        function loop(_) {
            var now = Date.now();
            var h = StringTools.lpad(Std.string(now.getHours()), "0", 2);
            var m = StringTools.lpad(Std.string(now.getMinutes()), "0", 2);
            var s = StringTools.lpad(Std.string(now.getSeconds()), "0", 2);

            ctx.fillStyle = "#111";
            ctx.fillRect(0, 0, canvas.width, canvas.height);

            ctx.fillStyle = "#0f0";
            ctx.font = "80px monospace";
            ctx.fillText(h + ":" + m + ":" + s, 50, 130);
        }

        Browser.window.setInterval(loop, 1000);
        loop(null);
    }
}
