import React from "react";
import Slider from 'react-slick';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import '../Css/Styling.css';
import { useNavigate } from "react-router-dom";
import { Button } from 'react-bootstrap';
import About from "./About";
import Services from "./Services ";
import facials from '../Images/facials.jpg'
import Stylists from "./Stylists";


const Index = () => {
    const navigate = useNavigate();

    const handleSignupClick = () => {
        navigate("/Signup"); // Replace "/signup" with the actual path to your Signup page
    };

    const handleLoginClick = () => {
        navigate("/Login"); // Replace "/login" with the actual path to your Login page
    };

    const slides = [
        {
            id: 1,
            heading1: 'Welcome to Luxe Salon',
            description1: 'Discover premium hair and beauty services tailored for you.',
            description2: 'Book your appointment today and experience the best in beauty care.'
            
        },
        {
            id: 2,
            heading1: 'Experience Excellence at Luxe Salon',
            description1: 'Our skilled stylists and beauticians provide top-notch services.',
            description2: 'Join us for a luxurious and relaxing salon experience.'
        }
    ];

    const settings = {
        dots: true,
        infinite: true,
        speed: 500,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000, // Adjust the autoplay speed in milliseconds
    };

    return (
        <div id="root">
            <section className="banner_main">
                <Slider className="custom-slider" {...settings}>
                    {slides.map((slide) => (
                        <div key={slide.id} className={`carousel-item${slide.id}`}>
                            <div className="f-slide">
                                <div className="slide-content">
                                    <h2>{slide.heading1}</h2>
                                    <h2>{slide.heading2}</h2>
                                    <p>{slide.description1}</p>
                                    <p>{slide.description2}</p>
                                    <div className="gl-buttons">
                                        <Button className="g-button" variant="primary" onClick={handleSignupClick}>
                                            <span>Get Started</span>
                                        </Button>
                                        <Button className="l-button" variant="primary" onClick={handleLoginClick}>
                                            Login
                                        </Button>
                                    </div>
                                </div>
                                <div className="side-image">
                                    <div className="round"></div>
                                    <img className="essie-image" src={facials} alt="Pretty Essie"/>

                                </div>

                            </div>
                        </div>
                    ))}
                </Slider>
            </section>
            <About/>
            <Services/> 
            <Stylists/>

        </div>
    );
};

export default Index;
