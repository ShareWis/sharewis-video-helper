var storageKey = 'sharewis-video-player';

videojs.registerPlugin('keepVolume', function (options) {
    var volumeKey = storageKey + '-' + 'volume';
    var muteKey = storageKey + '-' + 'mute';

    this.on("volumechange", function () {
        window.localStorage.setItem(volumeKey, this.volume());
        window.localStorage.setItem(muteKey, this.muted());
    });

    var volume = window.localStorage.getItem(volumeKey);
    volume && this.volume(volume);

    var mute = window.localStorage.getItem(muteKey);
    mute && this.muted(mute === 'true');
});

videojs.registerPlugin('keepRate', function (options) {
    var key = storageKey + '-' + 'rate';

    this.on("ratechange", function () {
        window.localStorage.setItem(key, this.playbackRate());
    });

    var rate = window.localStorage.getItem(key);
    rate && this.playbackRate(rate);
});
