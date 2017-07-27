class UsersController < ApplicationController
	def spotify
		spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
		@image = spotify_user.images.first

		@top_tracks = spotify_user.top_tracks
		# @tracks = @top_tracks.map { |track| track.name }

		@top_artists = spotify_user.top_artists
		# @artists = @top_artists.map { |artist| artist.name }
		# @artists_images = @top_artists.map { |artist| artist.images.first['url'] }

		@related_artists = @top_artists.map { |artist| artist.related_artists.first }

		# @related_artists = @top_artists.map(&:related_artists)

		# @top_artists.each do |artist|
	 		# if artist.related_artists || artist.related_artists.empty?
			# 	@related_artists << artist
		 @recommendations = RSpotify::Recommendations.generate(seed_tracks: @top_tracks.map(&:id)[0,5]).tracks
		 @recs = RSpotify::Recommendations.generate(seed_artists: @top_artists.map(&:id)[0,5] )

		# @recommendations = RSpotify::Recommendations.generate(seed_genres: ['blues', 'country'])



	end
end
