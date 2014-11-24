class Api::MusicController < ApplicationController
  def playmusic

    if params[:genre].present?
      tag = Rockstar::Tag.new(params[:genre])
    else
      tag = Rockstar::Tag.new('rock')
    end
      puts 'Top Tracks'
      tag.top_tracks.each do |t|
        puts "(#{t.count}) #{t.name} by #{t.artist}"
        p t.url
      end
      track = tag.top_tracks.first
      #track.scrobble(Time.now)


    render json: {url: track.url}
  end
end