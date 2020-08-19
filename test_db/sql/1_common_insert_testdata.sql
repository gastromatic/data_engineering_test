
DO LANGUAGE plpgsql $$
  BEGIN
    RAISE WARNING 'DEVELOPMENT ONLY: inserting some fake data';
  END
  $$;

SET search_path TO common;

INSERT INTO common.users(user_name) VALUES ('Data Engineer'), ('Donal Duck'), ('Luke Skywalker');

INSERT INTO common.customer_meta(kind, lat, lon, seats, price_level)
  VALUES ('hotel', '48.784744', '9.182595', '160', '3');
