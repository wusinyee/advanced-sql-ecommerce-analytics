document.addEventListener('DOMContentLoaded', function() {
    // Window Functions Chart
    const windowCtx = document.getElementById('windowChart').getContext('2d');
    new Chart(windowCtx, {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [{
                label: 'Monthly Sales ($K)',
                data: [45, 52, 48, 61, 58, 65, 72, 69, 75, 82, 88, 95],
                borderColor: '#3498db',
                backgroundColor: 'rgba(52, 152, 219, 0.1)',
                tension: 0.4,
                fill: true
            }, {
                label: 'Growth Rate (%)',
                data: [null, 15.6, -7.7, 27.1, -4.9, 12.1, 10.8, -4.2, 8.7, 9.3, 7.3, 8.0],
                borderColor: '#e74c3c',
                backgroundColor: 'rgba(231, 76, 60, 0.1)',
                tension: 0.4,
                yAxisID: 'y1'
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                title: {
                    display: true,
                    text: 'Monthly Sales Growth Analysis',
                    font: { size: 16 }
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Sales ($K)'
                    }
                },
                y1: {
                    position: 'right',
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Growth Rate (%)'
                    },
                    grid: {
                        drawOnChartArea: false
                    }
                }
            }
        }
    });

    // Subqueries Chart
    const subqueryCtx = document.getElementById('subqueryChart').getContext('2d');
    new Chart(subqueryCtx, {
        type: 'bar',
        data: {
            labels: ['Electronics', 'Fashion', 'Cosmetics', 'Home & Kitchen', 'Sports'],
            datasets: [{
                label: 'Target Revenue ($K)',
                data: [120, 85, 65, 75, 55],
                backgroundColor: '#3498db'
            }, {
                label: 'Actual Revenue ($K)',
                data: [138, 78, 68, 72, 58],
                backgroundColor: '#2ecc71'
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                title: {
                    display: true,
                    text: 'Revenue vs Targets by Product Category',
                    font: { size: 16 }
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Revenue ($K)'
                    }
                }
            }
        }
    });

    // CTEs Chart
    const cteCtx = document.getElementById('cteChart').getContext('2d');
    new Chart(cteCtx, {
        type: 'bar',
        data: {
            labels: ['Electronics', 'Fashion', 'Cosmetics', 'Home & Kitchen', 'Sports'],
            datasets: [
                {
                    label: 'Standard Customers',
                    data: [45, 38, 28, 32, 25],
                    backgroundColor: '#3498db'
                },
                {
                    label: 'Premium Customers',
                    data: [93, 40, 40, 40, 33],
                    backgroundColor: '#9b59b6'
                }
            ]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                title: {
                    display: true,
                    text: 'Sales by Product Category and Customer Segment',
                    font: { size: 16 }
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Sales ($K)'
                    }
                }
            }
        }
    });

    // Recursive Queries Chart
    const recursiveCtx = document.getElementById('recursiveChart').getContext('2d');
    new Chart(recursiveCtx, {
        type: 'line',
        data: {
            labels: ['Q1', 'Q2', 'Q3', 'Q4'],
            datasets: [{
                label: 'Quarterly Revenue',
                data: [180, 210, 245, 320],
                borderColor: '#3498db',
                backgroundColor: 'rgba(52, 152, 219, 0.1)',
                fill: true
            }, {
                label: 'Cumulative Revenue',
                data: [180, 390, 635, 955],
                borderColor: '#e74c3c',
                backgroundColor: 'rgba(231, 76, 60, 0.1)',
                borderDash: [5, 5],
                fill: true
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                title: {
                    display: true,
                    text: 'Quarterly and Cumulative Revenue Analysis',
                    font: { size: 16 }
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Revenue ($K)'
                    }
                }
            }
        }
    });

    // Performance Optimization Chart
    const performanceCtx = document.getElementById('performanceChart').getContext('2d');
    new Chart(performanceCtx, {
        type: 'bar',
        data: {
            labels: ['Before Optimization', 'After Optimization'],
            datasets: [{
                label: 'Query Execution Time (minutes)',
                data: [45, 7],
                backgroundColor: ['#e74c3c', '#2ecc71']
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                title: {
                    display: true,
                    text: 'Query Performance Improvement',
                    font: { size: 16 }
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Time (minutes)'
                    }
                }
            }
        }
    });

    // Employee Performance Chart
    const employeeCtx = document.getElementById('employeeChart').getContext('2d');
    new Chart(employeeCtx, {
        type: 'radar',
        data: {
            labels: ['Q1', 'Q2', 'Q3', 'Q4'],
            datasets: [
                {
                    label: 'Lionel Messie',
                    data: [120, 135, 140, 145],
                    borderColor: '#2ecc71',
                    backgroundColor: 'rgba(46, 204, 113, 0.2)'
                },
                {
                    label: 'Mahatma Ghandy',
                    data: [85, 80, 75, 70],
                    borderColor: '#e74c3c',
                    backgroundColor: 'rgba(231, 76, 60, 0.2)'
                },
                {
                    label: 'Team Average',
                    data: [100, 105, 110, 115],
                    borderColor: '#3498db',
                    backgroundColor: 'rgba(52, 152, 219, 0.2)'
                }
            ]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                title: {
                    display: true,
                    text: 'Employee Performance vs Targets',
                    font: { size: 16 }
                }
            },
            scales: {
                r: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Performance %'
                    }
                }
            }
        }
    });
});
