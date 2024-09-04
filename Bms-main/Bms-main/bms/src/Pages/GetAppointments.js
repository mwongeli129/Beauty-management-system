import React, { useEffect, useState } from "react";
import axios from "axios";
import { Link } from "react-router-dom";
import "../Css/Users.css";

const GetAppointments = () => {
    const [appointments, setAppointments] = useState([]);

    useEffect(() => {
        getAppointments();
    }, []);

    function getAppointments() {
        axios.get('http://localhost/Esssie/getappointments.php')
            .then(function(response) {
                console.log(response.data); // Check the response data here
                setAppointments(response.data);
            })
            .catch(function(error) {
                console.error('Error fetching appointments:', error);
            });
    }

    return (
        <>
            <div className="users">
                <h1>Appointments</h1>
                <table className="table">
                    <thead className="t-head">
                        <tr className="table-r">
                            <th className="th">#</th>
                            <th className="th">Full Name</th>
                            <th className="th">Email</th>
                            <th className="th">Service</th>
                            <th className="th">Appointment Date</th>
                            <th className="th">Appointment Time</th>
                            <th className="th">Payment Method</th>
                            <th className="th">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        {appointments.map((appointment, key) =>
                            <tr key={key}>
                                <td>{appointment.id}</td>
                                <td>{appointment.fullName}</td>
                                <td>{appointment.email}</td>
                                <td>{appointment.service || "N/A"}</td> {/* Display "N/A" if service is undefined */}
                                <td>{appointment.appointmentDate}</td>
                                <td>{appointment.appointmentTime}</td>
                                <td>{appointment.paymentMethod}</td>
                                <td>
                                    <Link to={`appointment/${appointment.id}/edit`}>Edit</Link>
                                    <button>Delete</button>
                                </td>
                            </tr>
                        )}
                    </tbody>
                </table>
            </div>
        </>
    );
}

export default GetAppointments;
