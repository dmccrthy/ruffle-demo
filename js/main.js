/**
 * This is the main file for generating a ruffle player.
 */

/**
 *
 * @param {*} url
 * @param {*} cont
 * @param {*} width
 * @param {*} height
 */
function embedSWF(url, cont, width, height) {
    var ruffle = window.RufflePlayer.newest(),
        player = Object.assign(
            document.getElementById(cont).appendChild(ruffle.createPlayer()),
            {
                width: width,
                height: height,
                style:
                    "width: " +
                    width +
                    "px; height: " +
                    height +
                    "px;" +
                    "margin: 0;",
            }
        );
    player.load({ url: url });
}
