thrice :: (a -> a) -> a -> a
-- thrice f x = f(f(f x))
thrice f x = (f.f.f) x