json.extract! paper, :id, :format, :volume, :type, :genre, :cover, :publisher, :printing, :circulation, :price, :additional, :created_at, :updated_at
json.url paper_url(paper, format: :json)
