import mpd
client = mpd.MPDClient()
client.connect('localhost',6600)



SongInfo = client.currentsong()
artist = SongInfo['artist']
album = SongInfo['album']
title = SongInfo['title']



print '{} - {}'.format(artist, title)
