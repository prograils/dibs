
# @TODO looks like shit, to be fixed. Keeping it just for now, to make shit
# work
class Hash
  def to_query
    keys.map{|k| self.key_to_query(k) }.join('&')
  end

  def key_to_query(key)
    require 'cgi' unless defined?(CGI) && defined?(CGI::escape)
    "#{CGI.escape(key.to_s)}=#{CGI.escape(self[key].to_s)}"
  end
end
